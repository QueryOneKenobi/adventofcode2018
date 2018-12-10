DECLARE @NumberOfBoxes int = (SELECT COUNT(Id) FROM Box);
DECLARE @BoxIndex int = 1;
DECLARE @BoxWithAlmostSameLettersId int = null;

-- Loop through boxes until the right box is found
WHILE (@BoxIndex <= @NumberOfBoxes AND @BoxWithAlmostSameLettersId IS NULL)
BEGIN
	DECLARE @Value nvarchar(30) = (SELECT BoxId FROM BOX WHERE Id = @BoxIndex);
	DECLARE @ValueLength int = LEN(@Value);
	DECLARE @ValueIndex int = 1;

	if EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Temp' AND TABLE_SCHEMA = 'dbo')
	BEGIN 
		DROP TABLE Temp;
	END

	CREATE TABLE Temp (Id int, CharValue CHAR);

	-- Loop through each char until the right box is found
	WHILE (@ValueIndex <= @ValueLength AND @BoxWithAlmostSameLettersId IS NULL)
	BEGIN
		DECLARE @C CHAR = SUBSTRING(@Value, @ValueIndex, 1);
		INSERT INTO Temp (Id, CharValue) SELECT Id, @C FROM Box WHERE Id != @BoxIndex AND SUBSTRING(BoxId, @ValueIndex, 1) = @C; 
		SET @ValueIndex = @ValueIndex + 1;
	END
	
	SET @BoxWithAlmostSameLettersId = (SELECT Id FROM Temp GROUP BY Id HAVING COUNT(Id) = @ValueLength-1);

	SET @BoxIndex = (CASE WHEN @BoxWithAlmostSameLettersId IS NOT NULL THEN @BoxIndex ELSE @BoxIndex + 1 END);
END

-- Merge chars into a string (varchar)
DECLARE @Result VARCHAR(30) 
SELECT @Result = COALESCE(@Result + '', '') + CharValue FROM Temp
WHERE Id = @BoxWithAlmostSameLettersId

SELECT @Result;

DROP TABLE Temp;

