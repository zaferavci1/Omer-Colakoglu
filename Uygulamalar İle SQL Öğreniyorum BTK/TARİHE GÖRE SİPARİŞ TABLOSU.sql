--TARİHE GÖRE SİPARİŞ TABLOSU
SELECT 
	--DATEDIFF(HOUR,O.DATE_,I.DATE_)
	CONVERT(DATE,O.DATE_) AS SIPARISTARIHI,
	SUM(OD.LINETOTAL) AS SIPARISADEDI,
	SUM(OD.AMOUNT) AS TOPLAMSIPARIS_MIKTAR,
	COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI

FROM ADDRESS A

	INNER JOIN USERS U ON U.ID=A.USERID
	INNER JOIN ORDERS O ON O.ADDRESSID=A.ID 
	INNER JOIN CITIES C ON C.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS IT ON IT.ID=OD.ITEMID

GROUP BY CONVERT(DATE,O.DATE_)
ORDER BY 1