﻿
 -- Task 1. 1-100 diapazonunda olan cüt rəqəmləri ekrana çıxarın

CREATE FUNCTION CutReqemlerPrint()
RETURNS @cutReqemler TABLE (number int)
AS
BEGIN
    DECLARE @num int = 1;
    
    WHILE @num <= 100
    BEGIN
		IF @Num % 2 = 0
			INSERT @cutReqemler (number) VALUES (@num);
        SET @num = @num + 1;
    END

    RETURN;
END;


SELECT * FROM CutReqemlerPrint();


-- Task 2. Authorların sayını Authors adlı dəyişəndə saxlayın, daha sonra bu dəyişəni 5ə vuraraq
-- ekrana çıxarın
AS
BEGIN
    DECLARE @authorCount int;

    SELECT @authorCount = COUNT(*) FROM Authors;

    SELECT @authorCount * 5 AS Result;
END;


RETURNS nvarchar(5)
AS
BEGIN
    DECLARE @reversedNumber int = 0, @originalNumber int = @number;

    WHILE @number > 0
    BEGIN
        SET @reversedNumber = @reversedNumber * 10 + @number % 10;
        SET @number /= 10;
    END;

    RETURN IIF(@originalNumber = @reversedNumber, 'True', 'False');
END;


SELECT dbo.PolindromTest(12321) AS Result;


-- hasilini hesablayan proqram yazın.
	@start int,
	@end int
AS
BEGIN
    DECLARE @num int = @start;
    DECLARE @cutCem bigint = 0;
    DECLARE @tekHasil bigint = 1;

    WHILE @num <= @end
    BEGIN
        IF @num % 2 = 0
            SET @cutCem = @cutCem + @num;
        ELSE
            SET @tekHasil = @tekHasil * @num;

        SET @num = @num + 1;
    END

    SELECT CutCem = @cutCem, TekHasil = @tekHasil;
END;


                 @number int
AS
BEGIN
    IF @number < 0
        PRINT 'eded menfi ola bilmez';
    ELSE
    BEGIN
        DECLARE @result bigint = 1;
        DECLARE @i int = 1;

        WHILE @i <= @number

        BEGIN
            SET @result = @result * @i;
            SET @i = @i + 1;
        END

        PRINT @result;
    END
END;


EXEC us_calcFact 5;