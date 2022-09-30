--ÜRÜNLERİN FİYAT ANALİZİ,ENÇOK HANGİ AY SATTI
SELECT ITM.ITEMCODE,ITM.ITEMNAME,ITM.UNITPRICE,
(SELECT MIN(UNITPRICE)  FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENDUSUKFİYAT,
(SELECT MAX(UNITPRICE)  FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENYUKSEKFİYAT,
(SELECT AVG(UNITPRICE)  FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ORTALAMAFIYAT,
(SELECT SUM(AMOUNT)  FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS TOPLAMADET,
(SELECT SUM(AMOUNT)  FROM ORDERDETAILS WHERE ITEMID=ITM.ID)*(ITM.UNITPRICE) AS TOPLAMTUTTAR,

(SELECT TOP 1 DATEPART(MONTH,O.DATE_) ENCOKSATILANAY FROM ORDERS O
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	WHERE OD.ITEMID=ITM.ID
	GROUP BY DATEPART(MONTH,O.DATE_)
	ORDER BY SUM(OD.AMOUNT) DESC
	) 


FROM ITEMS ITM

ORDER BY ITM.ITEMNAME