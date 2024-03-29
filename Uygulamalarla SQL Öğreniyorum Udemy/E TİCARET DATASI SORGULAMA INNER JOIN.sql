SELECT U.NAMESURNAME İSİMSOYİSİM,U.ID,B.CREATEDDATE,BB.AMOUNT,BB.PRICE,BB.TOTAL,
I.ITEMCODE,I.ITEMNAME,I.CATEGORY1,I.CATEGORY2,I.CATEGORY3,
CO.COUNTRY,C.CITY,T.TOWN,DI.DISTRICT,A.ADDRESSTEXT,INV.INVOICENO,INV.CARGOFICHENO,
INV.DATE_ AS SHIPDATE
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
