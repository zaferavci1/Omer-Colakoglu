--SUBSTRING AND LEN

--SELECT SUBSTRING('OMER FARUK COLAKOGLU',2,3)

SELECT * FROM USERS WHERE USERNAME_ LIKE '%O'
SELECT * FROM USERS WHERE SUBSTRING(USERNAME_,1,1)='O'
SELECT * FROM USERS WHERE SUBSTRING(USERNAME_,LEN(USERNAME_),1)='O'