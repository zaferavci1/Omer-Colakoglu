SET STATISTICS IO ON
--SUBQUERY
SELECT U.NAMESURNAME,
(SELECT COUNT(*) FROM BASKET WHERE USERID=U.ID)
FROM USER_ U
WHERE (SELECT COUNT(*) FROM BASKET WHERE USERID=U.ID)>0

--JOIN
SELECT U.NAMESURNAME,COUNT(B.ID) AS TOPLAMSIPARIS
FROM USER_ U
INNER JOIN BASKET B ON B.USERID=U.ID
GROUP BY U.NAMESURNAME
