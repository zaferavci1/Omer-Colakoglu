--JOIN
SELECT USER_.USERNAME_,USER_.NAMESURNAME,USER_.EMAIL,USER_.TELNR1,
USER_.TELNR2,ADDRES.ADDRESSTEXT
FROM USER_ 
JOIN ADDRES ON USER_.ID=ADDRES.USERID --NEYE GÖRE BAĞLADIĞIMIZI BURADA YAPTIK
WHERE USER_.ID=1

SELECT * FROM ADDRES 
WHERE USERID=1

--YENİDEN JOIN
SELECT USER_.ID,
USER_.USERNAME_,USER_.NAMESURNAME,USER_.EMAIL,USER_.TELNR1,USER_.TELNR2,ADDRES.ADDRESSTEXT
FROM USER_ 
JOIN ADDRES ON USER_.ID=ADDRES.USERID


WHERE USER_.ID=1

--JOIN KESİŞİM
--SELECT USER_.NAMESURNAME,USER_.ID,ADDRES.ADDRESSTEXT FROM USER_ 
--INNER JOIN ADDRES ON ADDRES.USERID=USER_.ID
--WHERE USER_.ID=2

--DELETE FROM USER_ WHERE ID=4
--WHERE USERID=1

