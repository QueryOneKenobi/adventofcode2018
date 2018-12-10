DECLARE @NumberOfBoxes int = (SELECT COUNT(Id) FROM Box);
DECLARE @BoxIndex1 int = 1;
DECLARE @BoxIndex2 int;
DECLARE @Value1 nvarchar(30);
DECLARE @ValueLength int = (SELECT LEN(BoxId) FROM Box WHERE Id = 1);
DECLARE @LevenshteinComp int;

-- Loop through boxes until the right box is found
WHILE (@BoxIndex1 <= @NumberOfBoxes AND @BoxIndex2 IS NULL)
BEGIN
	IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Temp' AND TABLE_SCHEMA = 'dbo')
	BEGIN 
		DROP TABLE Temp;
	END
	CREATE TABLE Temp (BoxId1 int, BoxId2 int, Levenshtein int);

	SET @Value1 = (SELECT BoxId FROM Box WHERE Id = @BoxIndex1);

	INSERT INTO Temp (BoxId1, BoxId2, Levenshtein) SELECT @BoxIndex1, Id, dbo.Levenshtein(@Value1, BoxId, @ValueLength) FROM Box WHERE Id > @BoxIndex1;
	SET @BoxIndex2 = (SELECT BoxId2 FROM Temp WHERE Levenshtein = 1);
	SET @BoxIndex1 = @BoxIndex1 + 1; 	
END

DECLARE @Value2 nvarchar(30) = (SELECT BoxId FROM Box WHERE Id = @BoxIndex2);
DECLARE @ValueIndex int = 1;
DECLARE @Result VARCHAR(30) 

WHILE @ValueIndex <= @ValueLength
BEGIN
	DECLARE @C char = (SUBSTRING(@Value1, @ValueIndex, 1));
	DECLARE @CCompare char = (SUBSTRING(@Value2, @ValueIndex, 1));
	SELECT @Result = COALESCE(@Result + '', '') + CASE WHEN @C = @CCompare THEN @C ELSE '' END;
	SET @ValueIndex = @ValueIndex + 1;
END

SELECT @Result;

DROP TABLE Temp;