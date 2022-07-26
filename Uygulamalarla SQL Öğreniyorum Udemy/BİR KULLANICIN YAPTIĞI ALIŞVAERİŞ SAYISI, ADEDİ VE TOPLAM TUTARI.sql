--BİR KULLANICIN YAPTIĞI ALIŞVAERİŞ SAYISI, ADEDİ VE TOPLAM TUTARI
SELECT U.NAMESURNAME İSİMSOYİSİM,COUNT(DISTINCT B.ID) AS ALISVERISSAYISI,
COUNT(BB.ID) AS ÜRÜNSAYISI,
SUM(BB.AMOUNT)AS ALDIGI_URUN_MIKTARI,SUM(TOTAL) AS TOPLAMTUTAR
FROM USER_ U
INNER JOIN BASKET B ON B.USERID=U.ID
INNER JOIN BASKETDETAIL BB ON BB.BASKETID=B.ID
INNER JOIN ITEM I ON I.ID=BB.ID
INNER JOIN ORDER_ O ON O.BASKETID=B.ID
INNER JOIN ADDRES A ON A.ID=O.ADDRESSID
INNER JOIN CITY C ON C.ID=A.CITYID
INNER JOIN COUNTRY CO ON CO.ID=A.COUNTRYID
INNER JOIN DISTRICT DI ON DI.ID=A.DISTRICTID
INNER JOIN TOWN T ON T.ID=A.TOWNID
INNER JOIN INVOICE INV ON INV.ORDERID=O.ID

GROUP BY U.NAMESURNAME
