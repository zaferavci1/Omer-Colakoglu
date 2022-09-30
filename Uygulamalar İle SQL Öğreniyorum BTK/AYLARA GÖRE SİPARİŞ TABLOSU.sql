--AYLARA GÖRE SİPARİŞ TABLOSU
SELECT 
	--DATEDIFF(HOUR,O.DATE_,I.DATE_)
	DATEPART(YEAR,O.DATE_) AS SIPARIS_YILI,
	DATEPART(MONTH,O.DATE_) AS SIPARIS_AYI, --HERHANGI BIR TARIHDEN SADECE AYI GETIRIR
CASE
	WHEN DATEPART(MONTH,O.DATE_)= 1 THEN 'OCAK'
	WHEN DATEPART(MONTH,O.DATE_)= 2 THEN 'SUBAT'
	WHEN DATEPART(MONTH,O.DATE_)= 3 THEN 'MART'
	WHEN DATEPART(MONTH,O.DATE_)= 4 THEN 'NISAN'
	WHEN DATEPART(MONTH,O.DATE_)= 5 THEN 'MAYIS'
	WHEN DATEPART(MONTH,O.DATE_)= 6 THEN 'HAZIRAN'
	WHEN DATEPART(MONTH,O.DATE_)= 7 THEN 'TEMMUZ'
	WHEN DATEPART(MONTH,O.DATE_)= 8 THEN 'AGUSTOS'
	WHEN DATEPART(MONTH,O.DATE_)= 9 THEN 'EYLUL'
	WHEN DATEPART(MONTH,O.DATE_)= 10 THEN 'EKIM'
	WHEN DATEPART(MONTH,O.DATE_)= 11 THEN 'KASIM'
	WHEN DATEPART(MONTH,O.DATE_)= 12 THEN 'ARALIK'
END AS AYADI,
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

GROUP BY DATEPART(MONTH,O.DATE_),DATEPART(YEAR,O.DATE_)
ORDER BY 1,2