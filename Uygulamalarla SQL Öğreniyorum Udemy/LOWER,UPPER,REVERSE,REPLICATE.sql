-- LOWER,UPPER,REVERSE,REPLICATE
SELECT UPPER('zafer')
SELECT LOWER('ÖMER')

SELECT REVERSE('ÖMER')-- TERSTEN

SELECT REPLICATE('0',10)-- 10 TANE SIFIR EKLİYOR

SELECT *,REPLICATE('0',8-LEN(SIRANO))+CONVERT(VARCHAR,SIRANO)
FROM TEST
UPDATE TEST SET SIRANO2=REPLICATE('0',8-LEN(SIRANO))+CONVERT(VARCHAR,SIRANO)