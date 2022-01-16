--Credit Card Fact
SELECT * FROM OLAP_CP.dbo.CreditCard_Fact WHERE Applicant_ID='5008824';
SELECT Applicant_ID, SUM(Good_Debt) as Good_Debt, SUM(Bad_Debt) as Bad_Debt, Last_ETL
FROM OLAP_CP.dbo.CreditCard_Fact WHERE Applicant_ID='5008824' GROUP BY Applicant_ID, Last_ETL;

--Credit Record Information
SELECT * FROM OLTP_CP.dbo.credit_record_db WHERE ID='5008824';
SELECT * FROM OLAP_CP.dbo.CreditRecord_Dimension WHERE Applicant_ID='5008824';


--Applicant General Information
SELECT * FROM OLTP_CP.dbo.application_record_db WHERE ID='5008824';
SELECT * FROM OLAP_CP.dbo.Application_Dimension WHERE Applicant_ID='5008824';