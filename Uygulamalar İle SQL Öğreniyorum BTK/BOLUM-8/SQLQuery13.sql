SELECT 
CY.CITY,COUNT(U.ID) AS SEHIRDEKİKULLANICILAR,COUNT(DISTINCT T.TOWN) AS ILCESAYISI

FROM 
USERS U,ADDRESS A, COUNTRIES C, CITIES CY , TOWNS T

WHERE U.ID=A.USERID AND A.COUNTRYID=C.ID 
AND A.CITYID=CY.ID
AND A.TOWNID=T.ID
--AND CY.CITY LIKE 'BURSA'
--AND U.ID=1
GROUP BY CY.CITY