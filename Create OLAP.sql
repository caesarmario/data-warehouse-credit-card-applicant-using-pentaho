-- Mario Caesar | TP061966

CREATE DATABASE OLAP_CP
USE OLAP_CP


--DROP TABLE Time_Dimension
CREATE TABLE dbo.Time_Dimension
(
Time_ID BIGINT  
, Day INT
, Month INT
, Year INT
, Date DATETIME
)
;

--DROP TABLE Application_Dimension
CREATE TABLE dbo.Application_Dimension
(
Index_Applicant BIGINT  
, Applicant_ID VARCHAR(10)
, Applicant_Gender VARCHAR(7)
, Total_Children INT
, Total_Family_Members INT
, Applicant_Age INT
, Birth_Date DATETIME
, Employed_Date DATETIME
, Education_Type VARCHAR(50)
, Family_Status VARCHAR(50)
, Housing_Type VARCHAR(50)
, Income_Type VARCHAR(50)
, Job_Title VARCHAR(50)
, Total_Income BIGINT
, Owned_Email VARCHAR(10)
, Owned_Mobile_Phone VARCHAR(10)
, Owned_Car VARCHAR(10)
, Owned_Realty VARCHAR(10)
, Owned_Phone VARCHAR(10)
, Owned_Work_Phone VARCHAR(10)
)
;

--DROP TABLE CreditRecord_Dimension
CREATE TABLE dbo.CreditRecord_Dimension
(
CreditRecord_ID BIGINT
, Record_Date DATETIME
, Applicant_ID VARCHAR(10)
, Status VARCHAR(5)
);

--DROP TABLE CreditCard_Fact
CREATE TABLE dbo.CreditCard_Fact
(
  CreditRecord_ID VARCHAR(15)
, Applicant_ID VARCHAR(10)
, Time_ID BIGINT
, Good_Debt INT
, Bad_Debt INT
, Last_ETL DATETIME
)
;