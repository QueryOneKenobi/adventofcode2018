-- Used the levenshtein-algorithm from this site
-- https://www.red-gate.com/simple-talk/blogs/string-comparisons-in-sql-edit-distance-and-the-levenshtein-algorithm/

DECLARE @NumberOfBoxes int = (SELECT COUNT(Id) FROM Box);
DECLARE @BoxIndex1 int = 1;
DECLARE @BoxIndex2 int = 2;
DECLARE @Value1 nvarchar(30);
DECLARE @Value2 nvarchar(30);
DECLARE @ValueLength int = (SELECT LEN(BoxId) FROM Box WHERE Id = 1);
DECLARE @LevenshteinComp int;

-- Loop through boxes until the right box is found
WHILE (@BoxIndex1 <= @NumberOfBoxes AND (@LevenshteinComp IS NULL OR @LevenshteinComp != 1))
BEGIN
	SET @Value1 = (SELECT BoxId FROM Box WHERE Id = @BoxIndex1);

	-- Loop through boxes to compare with until the right box is found
	WHILE (@BoxIndex2 <= @NumberOfBoxes AND (@LevenshteinComp IS NULL OR @LevenshteinComp != 1))
	BEGIN
		SET @Value2 = (SELECT BoxId FROM Box WHERE Id = @BoxIndex2);
		SET @LevenshteinComp = (SELECT dbo.Levenshtein(@Value1, @Value2, @ValueLength));
		SET @BoxIndex2 = CASE WHEN @LevenshteinComp = 1 THEN @BoxIndex2 ELSE @BoxIndex2 + 1 END;
	END

	SET @BoxIndex1 = @BoxIndex1 + 1; 	
	SET @BoxIndex2 = @BoxIndex1 + 1;    
END

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
