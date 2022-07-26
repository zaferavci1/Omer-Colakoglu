--FORMAT SAYI YADA TARİH TÜRÜNDEKİ DEGELERİ İSTEDİĞİMİZ FORMATTA YAZDIRMAMAMIZI SAĞLAR
SELECT FORMAT(GETDATE(),'D','en-us')

SELECT FORMAT (getdate(), 'dd/MM/yyyy ') as date	
SELECT FORMAT (getdate(), 'dd/MM/yyyy, hh:mm:ss ') as date	
SELECT FORMAT (getdate(), 'dddd, MMMM, yyyy') as date	
SELECT FORMAT (getdate(), 'MMM dd yyyy') as date	
SELECT FORMAT (getdate(), 'MM.dd.yy') as date	
SELECT FORMAT (getdate(), 'MM-dd-yy') as date	
SELECT FORMAT (getdate(), 'hh:mm:ss tt') as date	
SELECT FORMAT (getdate(), 'd','us') as date	
SELECT FORMAT (getdate(), 'yyyy-MM-dd hh:mm:ss tt') as date	
SELECT FORMAT (getdate(), 'yyyy.MM.dd hh:mm:ss t') as date	
SELECT FORMAT (getdate(), 'dddd, MMMM, yyyy','es-es') as date --Spanish	domingo, marzo, 2021
SELECT FORMAT (getdate(), 'dddd dd, MMMM, yyyy','ja-jp') as date --Japanese	
SELECT FORMAT (getdate(), 'dddd dd, MMMM, yyyy','tr-tr') as date --Turkısh
SELECT FORMAT (GETDATE(),'D','tr-tr')