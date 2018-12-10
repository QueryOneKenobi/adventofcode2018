--Used the levenshtein-algorithm from this site
--https://www.red-gate.com/simple-talk/blogs/string-comparisons-in-sql-edit-distance-and-the-levenshtein-algorithm/

CREATE TABLE Box (Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, BoxId nvarchar(30))

INSERT INTO Box (BoxId) 
VALUES 
('mphcuiszrnjzxwkbgdzqeoyxfa'),
('mihcuisgrnjzxwkbgdtqeoylia'),
('mphauisvrnjgxwkbgdtqeiylfa'),
('mphcuisnrnjzxwkbgdgqeoylua'),
('mphcuisurnjzxwkbgdtqeoilfi'),
('mkhcuisvrnjzowkbgdteeoylfa'),
('mphcoicvrnjzxwksgdtqeoylfa'),
('mxhcuisvrndzxwkbgdtqeeylfa'),
('dphcuisijnjzxwkbgdtqeoylfa'),
('mihvuisvrqjzxwkbgdtqeoylfa'),
('mphcuisrrnvzxwkbgdtqeodlfa'),
('mphtuisdrnjzxskbgdtqeoylfa'),
('mphcutmvsnjzxwkbgdtqeoylfa'),
('mphcunsvrnjzswkggdtqeoylfa'),
('mphcuisvrwjzxwkbpdtqeoylfr'),
('mphcujsdrnjzxwkbgdtqeovlfa'),
('mpfcuisvrdjzxwkbgdtteoylfa'),
('mppcuisvrpjzxwkbgdtqeoywfa'),
('mphcuisvrnjzxwkbfptqroylfa'),
('mphcuisvrnjzxwkbgstoeoysfa'),
('mphcufsvrnjzcwkbgdeqeoylfa'),
('mphcuissrnjzxwkbgdkquoylfa'),
('sphcuxsvrnjzxwkbgdtqioylfa'),
('mphcuiivrhjzxwkbgdtqevylfa'),
('echcuisvrnjzxwkbgltqeoylfa'),
('mphcuisvrljexwkbvdtqeoylfa'),
('mpjcuisvrnjzxwkhidtqeoylfa'),
('mphcuisvrfjzmwkbgdtqeoylfl'),
('mwhcuisvrnjzxwkbgdtqeoytfm'),
('mphcuisvrsjzxwkbgdaqeoylfh'),
('mohcuisvrnjzxwkbgdtqtoymfa'),
('maycuisvrnjzxwkbgdtqboylfa'),
('pphcuisvqnjzxwkbgdtqeoylfd'),
('mprcuisvrnjtxwmbgdtqeoylfa'),
('mfhcuisgrnjzxckbgdtqeoylfa'),
('mphiubsvrnjzxwkbgdtqeoyufa'),
('dphctisvrnjzxwkbgdtqeoylfk'),
('mphcuisvrnjznwksgdtqeoyzfa'),
('mpwcuisvrnjziwkbgdtqaoylfa'),
('mphduzsvrnjznwkbgdtqeoylfa'),
('mphccisvrnjzxwebgdtqeoylqa'),
('xphcuisvrnjzxwkfvdtqeoylfa'),
('mphcupsvrnjzxwkbgdtfeoylpa'),
('mphcuisvrtjzjwkbgdtqeoylfe'),
('mpbcuisvrnjzxwkbgdmieoylfa'),
('mphcuisvrnjzxwkbgjtqetylaa'),
('mphcuisvrnjzxwpbgdtgdoylfa'),
('ophcufsvrqjzxwkbgdtqeoylfa'),
('iphcuhsvrnjzxwkbgetqeoylfa'),
('mphcuisvunjzxwwbgdtqeoylqa'),
('mphcpisvrnjzowkbgdtveoylfa'),
('mphcuisvrnjzxhkbgdtqeotlla'),
('mphcuisvrnjzxwkbodtgeoylha'),
('mphcuisvrjjzxwkbwdtqtoylfa'),
('mphcwisvrnjnxwkbgjtqeoylfa'),
('mplcuicqrnjzxwkbgdtqeoylfa'),
('mphcuisvrnjzxydbgdtqeoylfn'),
('ophckisvrnjzxwkbgdtqeozlfa'),
('mphcuisvrkjzxwkbgdtteoblfa'),
('yphcuisvrnjcxwkbggtqeoylfa'),
('mphcuisvrnazxwfbqdtqeoylfa'),
('mphcuisvrmjzxwkbgdtlwoylfa'),
('mphctksvrnjzxwibgdtqeoylfa'),
('mphcuisprnjzxlebgdtqeoylfa'),
('mphcuisnrnjzxakbgdtueoylfa'),
('mphcuiavrnjoxwtbgdtqeoylfa'),
('nphcuisvrnjzxwkbgdtqzoylfk'),
('mphcuisrrnjmxwkbgdtqdoylfa'),
('mphcuisvrujzxwkvgdtqehylfa'),
('mphcuisvrnfzxwkogdtqebylfa'),
('mphcuisvrnjwdwkbgdtqeoyxfa'),
('mphcuisvrntzxwkrgxtqeoylfa'),
('mpzcuisvrnjzxwebgdtqeoylsa'),
('aphcuikvrnjzxwwbgdtqeoylfa'),
('mphcqisvrnjzxwkpgdtqeoelfa'),
('mphcuusvrnjzxwkbgdtjeodlfa'),
('mphcuisvrnjzewkbgdtteoylza'),
('mphcuisvanjzxwkbgdtheoylfc'),
('mphcjishrnjzxwkbgltqeoylfa'),
('mpxcuislrnjzxwkbgdtqeoynfa'),
('mphcuisvrnjjxwkbgdtmeoxlfa'),
('mphcimsvrnjzxwkbsdtqeoylfa'),
('mphcxisvcnjzxwjbgdtqeoylfa'),
('mphcuisbrvjzxwkbgdtqeoymfa'),
('mplcuisvrnjzxwkbgdtaenylfa'),
('mphcuihvrnjzxwkygytqeoylfa'),
('mphcbisvrnjzxhkbgdtqezylfa'),
('mphcuisarnjzxwkbgatqeoylfv'),
('mphcumsvrnjzxwkbgdrqebylfa'),
('mlhcuisvrnwzxwkbgdtqeoylfx'),
('mpkcuisvrkjzxwkbgdtqeoylfo'),
('mphcuissrnjzxwkbgdtqmoylfc'),
('mphcuiwvrnjuxwkfgdtqeoylfa'),
('mphcuicvlnjzxwkbgdvqeoylfa'),
('mphcuisvrvvzxwkbfdtqeoylfa'),
('myhcuisvrnjpxwkbgntqeoylfa'),
('mpocuisvrnjzxwtbgitqeoylfa'),
('mphcuisvrnjzxwkbgdtwewyqfa'),
('mphcuisvtnjzxwwbgdtqeoolfa'),
('mphcuisvrnjzxgkbgdyqeoyyfa'),
('mphcuisvrdjzxwkbgpyqeoylfa'),
('bphcuisvrnjzxwkbgxtqefylfa'),
('sphcuisvrdjzxwktgdtqeoylfa'),
('mphcuvsvrnjmxwobgdtqeoylfa'),
('mphcuisvrnjzxwkbsdtqeuylfb'),
('mnhcmisvynjzxwkbgdtqeoylfa'),
('mphckisvrnjzxwkhgdkqeoylfa'),
('mpacuisvrnjzxwkbgdtqeoolaa'),
('mpgcuisvrnjzxwkbzdtqeoynfa'),
('mphcuisvrojzxwkbzdtqeoylga'),
('mphcuisvknjfxwkbydtqeoylfa'),
('mphcuistrnjzxwkbgdqqeuylfa'),
('bpvcuiszrnjzxwkbgdtqeoylfa'),
('mphcuxsvrnjzswkbgdtqeoelfa'),
('mphcuisvbnjzxwlbgdtqeoylla'),
('mphcuisvonczxwkbgktqeoylfa'),
('mphcuisvrnkzxwvbgdtquoylfa'),
('mphcuisvrnjzxokfgdtqeoylia'),
('tphcuisvrnjzxwkbjdwqeoylfa'),
('mihcuisvrnjzpwibgdtqeoylfa'),
('mphcuisvrejzxwkbgdtqjuylfa'),
('mprcuisvrnjixwkxgdtqeoylfa'),
('mpqcuiszrnjzxwkbgdtqeodlfa'),
('mphcuasvrnjzzakbgdtqeoylva'),
('mphcuisvrnjzmwkbtdtqeoycfa'),
('mphcuisvrnjzxwkbcdtqioylxa'),
('mphckisvrnjzxwkbcdtqeoylfm'),
('mphcuisvrnjuxwbogdtqeoylfa'),
('mphcuisdrnjzxwkbldtqeoylfx'),
('mphcuisvrnjoxwkbgdtqeyyyfa'),
('mphcuicvqnjzxwkbgdtqeoylna'),
('mpmcuisvrnjzxwkbgdtqktylfa'),
('mphcuisvrnqzxwkggdtqeoykfa'),
('mphcuisvryjzxwkbydtqejylfa'),
('mphcugsvrnjzxwkbghtqeeylfa'),
('rphcuusvrnjzxwkwgdtqeoylfa'),
('zphwuiyvrnjzxwkbgdtqeoylfa'),
('cphcuivvrnjzxwkbgdtqenylfa'),
('mphcuisvrnjzxwkagotqevylfa'),
('mprcuisvrcjzxwkbgdtqeoytfa'),
('mphjugsvrnezxwkbgdtqeoylfa'),
('mphcuisvryjzxwkbgltqeoylaa'),
('mphcursvrnjzxfkbgdtqeoydfa'),
('mphcuisvrcuzxwkbgdtqeoylfw'),
('mphcuisvrijzxwkbgdtqeoelfh'),
('xphcuisvenjzxjkbgdtqeoylfa'),
('mphcuisvrnazxwkbgdeqeoylaa'),
('mphcuisbrsjzxwkbgdtqeoygfa'),
('mlhvuisvrnjzxwkbgdtqeoylfh'),
('mphcuisvrnjzxukbgdtqeoyhfy'),
('mpzcuilvrnjzawkbgdtqeoylfa'),
('hphcuisjfnjzxwkbgdtqeoylfa'),
('mahcuisvrnjzxwkegdtqeoylfi'),
('mphcuixvrnjzcwkbgdtqetylfa'),
('mphcuisvrnjzxwkdgdtqeoklfj'),
('mlhcuisvrnjzxwkbgdteeoylka'),
('mphcuifvrnjbxwkrgdtqeoylfa'),
('mphcuasvrnjzzwkbgdtqeoylva'),
('mphcuisvrnjzxwkboutqeoylba'),
('mbhcuisvcnjzxwklgdtqeoylfa'),
('mpbcuisvrnjzxgkbgdtqesylfa'),
('mphcuisvrnjfswkbgdtqeoylfd'),
('mphcuisvrnjzxwkbgdoweoysfa'),
('uphcuisvrnjzrwkbgdtqelylfa'),
('mphcuisvrnjzxwkbgdtqyoylsi'),
('mpqcuiqvxnjzxwkbgdtqeoylfa'),
('mphcuisorfjzxwkbgatqeoylfa'),
('mphcuisvrntfxwkbzdtqeoylfa'),
('mphcuisvrnrzxwkbgdtueoylfl'),
('mphcuisvrnjzewkagdtyeoylfa'),
('mpocuisdrnjzxwkbgdtqeozlfa'),
('mphcuisvrnjjxwkbgdtoeoylfm'),
('mphcuisvenjzxwkbgdtqwoylza'),
('mpmcuisvrnjzxwkbgdtqeoxlfr'),
('mphcuisvgnjhxwkbgdtqeoplfa'),
('mphcuisvrnjzowkdgdtqeoyyfa'),
('mphcuisqynjzxwkbgdtqeoylda'),
('hphcuisvgnjzxwkbgdtbeoylfa'),
('iphcuipvrnuzxwkbgdtqeoylfa'),
('mphcuisvrnjzsikbpdtqeoylfa'),
('mpwcuhsvrnjzxbkbgdtqeoylfa'),
('mnhjuisvcnjzxwkbgdtqeoylfa'),
('mphcudsvrnjzxwkbgdtqloilfa'),
('mpncuiwvrwjzxwkbgdtqeoylfa'),
('mphcuisvrnjgawkbgdtqeoylya'),
('mphcuisvrnjzxwkbggtteoslfa'),
('mphcuisvrnjzxwkbgdvqeoylpe'),
('mphcuisvrnczxfkbgktqeoylfa'),
('mphcuifvrnjzxwkbgdbmeoylfa'),
('mphcuisvrnjytwkbgdtqeoylla'),
('mphcuisvrnjzxwkbgdtjeoxlfn'),
('mphjuisvrnjzxwkbghtqeoyffa'),
('mphcuisvrnjzxkrbgdtqeoylaa'),
('mphcbisvrnjzxwkbgttqeoylfs'),
('mphkuksvbnjzxwkbgdtqeoylfa'),
('nphcuidvrnjzxwhbgdtqeoylfa'),
('mphguzsvrnjzxwkbgdaqeoylfa'),
('mihcuisfrnjzxwkbgdtqhoylfa'),
('mphcuisvrnrzxwpbgdtqesylfa'),
('zphcuisvrnjzxwkbddtqeoylaa'),
('mphcuigvmnjzxwkbgdtqeoylba'),
('mjhcuisvrnjzxjkbgdtqeoylha'),
('mphnuisvrnjznwkbgdtqnoylfa'),
('mkhcuisvrnjcxwkbgdqqeoylfa'),
('mphcuisvenjzxwbbqdtqeoylfa'),
('qphcuisnrnjzawkbgdtqeoylfa'),
('mphcuisvrdjzxwkbgdtqeoywca'),
('mphcuzsvvnjzxwfbgdtqeoylfa'),
('pphcuxsvrnjzxwkbgdtmeoylfa'),
('mphiuvsvrnjzxlkbgdtqeoylfa'),
('mphlqisvrnjzxkkbgdtqeoylfa'),
('mmhcuisvrnjzxwkbgatqeoylea'),
('mphduisrrnjoxwkbgdtqeoylfa'),
('mphcuisvrnjnxwkvgdyqeoylfa'),
('mphcuvsvrnjzxgkbgdtqeoylfz'),
('mphcuisvryjzxwkbggtqkoylfa'),
('iphcuisvrdjzxwkbgotqeoylfa'),
('mphcuisvrnjzxwhbgdtqwoyofa'),
('mphcorbvrnjzxwkbgdtqeoylfa'),
('mghcuisvrnpzxykbgdtqeoylfa'),
('mphauisvrnjnxwkbzdtqeoylfa'),
('mphcgisvrnjzxwkwgdtqeoygfa'),
('mphcuisvrnjzxwkggotqeoylba'),
('mphcuesvrnjzxwkbgdwqebylfa'),
('yphcuisvrnjzxwkbgdxqeoylja'),
('ephyuisvrnjzywkbgdtqeoylfa'),
('mfhcuisqrnjzxwkbgdlqeoylfa'),
('mphkuisvrnjzxwkbertqeoylfa'),
('mphcuusgrnjzxwkbggtqeoylfa'),
('mphcuildrnjvxwkbgdtqeoylfa'),
('mphcuiuvrnjzlwkbgwtqeoylfa'),
('mppcuisvrljzxwkbgdtqeoylfw'),
('mphcwiwvrnjzxwsbgdtqeoylfa'),
('mphcubivrnjzxwkqgdtqeoylfa'),
('mphcuisvrnjpxwkngdtqeoylpa'),
('pchcuisvrgjzxwkbgdtqeoylfa'),
('mphcuisvlnjzxwkbgdtmeoylfw'),
('mphcuisvrnjzywkbgdvqeoylfj'),
('mpzcuisvrnezxwktgdtqeoylfa'),
('mphcuisvrnjbxwkbgzrqeoylfa'),
('mphcuisvrnjzxwktgdtqeodtfa'),
('jphcuiavrnjzxwkbgdtqeoylfv'),
('mphcuisvrnjzxwkbddppeoylfa'),
('mphcuissrkjzxwkbgxtqeoylfa'),
('mphcuisvrhjzxwxbgdtqeoylxa'),
('mphcvisvgnjjxwkbgdtqeoylfa'),
('mphcuisprnjwxwtbgdtqeoylfa'),
('mphcuissrnjzxqkbgdtqeoymfa'),
('mphcuiabrnjzxokbgdtqeoylfa'),
('mphcuisvrnczxwkbgmtpeoylfa')

------------------------------------------------------------------------------------------------------------------------------------

DECLARE @NumberOfBoxes int = (SELECT COUNT(Id) FROM Box);
DECLARE @BoxIndex int = 1;
DECLARE @Value nvarchar(30);
DECLARE @ValueLength int = (SELECT LEN(BoxId) from Box WHERE Id = 1);
DECLARE @ValueIndex int = 1;
DECLARE @C char;

----------------------------- Part 1 ------------------------------------------------------------------------------------------------

CREATE TABLE Result (BoxId int, Letter Char, Ocurrency int)

WHILE (@BoxIndex <= @NumberOfBoxes)
BEGIN
	SET @Value = (SELECT BoxId FROM BOX WHERE Id = @BoxIndex);
	--SET @ValueLength = LEN(@Value);
	SET @ValueIndex = 1;
	CREATE TABLE Temp (CharValue char);

	WHILE (@ValueIndex <= @ValueLength)
	BEGIN
		SET @C = SUBSTRING(@Value, @ValueIndex, 1);
		INSERT INTO Temp VALUES (@C);
		SET @ValueIndex = @ValueIndex + 1;
	END
	
	INSERT INTO Result (BoxId, Letter, Ocurrency) SELECT @BoxIndex, CharValue, COUNT(CharValue) FROM Temp GROUP BY CharValue;
	DROP TABLE Temp;
	SET @BoxIndex = @BoxIndex + 1;
END

DECLARE @NumberWith2 int = (SELECT COUNT(*) FROM (SELECT BoxId FROM Result GROUP BY BoxId, Ocurrency HAVING Ocurrency = 2) AS sub);
DECLARE @NumberWith3 int = (SELECT COUNT(*) FROM (SELECT BoxId FROM Result GROUP BY BoxId, Ocurrency HAVING Ocurrency = 3) AS sub);
DECLARE @ResultPart1 int = @NumberWith2 * @NumberWith3

DROP TABLE Result

----------------------------- Part 2 ------------------------------------------------------------------------------------------------

DECLARE @BoxIndex1 int = 1;
DECLARE @BoxIndex2 int;
DECLARE @Value1 nvarchar(30);
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
SET @ValueIndex = 1;
DECLARE @ResultPart2 VARCHAR(30) 

WHILE @ValueIndex <= @ValueLength
BEGIN
	SET @C = (SUBSTRING(@Value1, @ValueIndex, 1));
	DECLARE @CCompare char = (SUBSTRING(@Value2, @ValueIndex, 1));
	SELECT @ResultPart2 = COALESCE(@ResultPart2 + '', '') + CASE WHEN @C = @CCompare THEN @C ELSE '' END;
	SET @ValueIndex = @ValueIndex + 1;
END

DROP TABLE Temp;


------------------------------ Result ---------------------------------------------------------------------------------------------

SELECT @ResultPart1 AS AnswerPart1, @ResultPart2 AS AnswerPart2;

----------------------------- Clear -----------------------------------------------------------------------------------------------
DROP TABLE Box

