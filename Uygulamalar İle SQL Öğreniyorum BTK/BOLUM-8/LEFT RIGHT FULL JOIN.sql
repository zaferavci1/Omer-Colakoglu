--SELECT  U.ID,U.USERNAME_,A.ADDRESSTEXT
--FROM USERS U
--JOIN ADDRESS A ON A.USERID=U.ID

--SELECT  U.ID,U.USERNAME_,A.ADDRESSTEXT
--FROM USERS U LEFT JOIN ADDRESS A ON A.USERID=U.ID
-- USERS LEFT ADDRESS RIGHT OLUYOR

--SELECT  U.ID,U.USERNAME_,A.ADDRESSTEXT
--FROM USERS U RIGHT JOIN ADDRESS A ON A.USERID=U.ID

SELECT  U.ID,U.USERNAME_,A.ADDRESSTEXT
FROM USERS U FULL JOIN ADDRESS A ON A.USERID=U.ID
