CREATE TABLE Result (BoxId int, Letter Char, Ocurrency int)
CREATE CLUSTERED INDEX IX_Result_Ocurrency ON Result (BoxId, Ocurrency); 

DECLARE @NumberOfBoxes int = (SELECT COUNT(Id) FROM Box);
DECLARE @CurrentBox int = 1;

WHILE (@CurrentBox <= @NumberOfBoxes)
BEGIN
	DECLARE @Value nvarchar(30) = (SELECT BoxId FROM BOX WHERE Id = @CurrentBox);
	DECLARE @ValueLength int = LEN(@Value);
	DECLARE @ValueCurrent int = 1;
	CREATE TABLE Temp (CharValue CHAR);

	WHILE (@ValueCurrent <= @ValueLength)
	BEGIN
		DECLARE @C CHAR = SUBSTRING(@Value, @ValueCurrent, 1);
		INSERT INTO Temp VALUES (@C);
		SET @ValueCurrent = @ValueCurrent + 1;
	END
	
	INSERT INTO Result (BoxId, Letter, Ocurrency) SELECT @CurrentBox, CharValue, COUNT(CharValue) FROM Temp GROUP BY CharValue;
	DROP TABLE Temp;
	SET @CurrentBox = @CurrentBox + 1;
END

DECLARE @NumberWith2 int = (SELECT COUNT(*) FROM (SELECT BoxId FROM Result GROUP BY BoxId, Ocurrency HAVING Ocurrency = 2) AS sub);
DECLARE @NumberWith3 int = (SELECT COUNT(*) FROM (SELECT BoxId FROM Result GROUP BY BoxId, Ocurrency HAVING Ocurrency = 3) AS sub);

SELECT 
@NumberWith2 AS NumberWith2, 
@NumberWith3 AS NumberWith3,
@NumberWith2 * @NumberWith3 AS 'Checksum'

DROP TABLE Result