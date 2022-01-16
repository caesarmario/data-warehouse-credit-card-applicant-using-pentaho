<h1 align="center"> 💳 ETL Credit Card Data Set 💳 </h1>
<p align="center">using <b>Pentaho Data Integration (PDI)/Kettle ⚙</b><br><br>
.: 📄 Dataset taken from <b><a href="https://www.kaggle.com/rikdifos/credit-card-approval-prediction"> Kaggle </a></b> :.
</p><br>
<p align="center">
  <img src="https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99" alt="Star Badge"/>
  <a href="https://www.github.com/caesarmario">
    <img src="https://img.shields.io/github/followers/caesarmario?style=social&link=https://www.github.com/caesarmario" alt"GitHub"/>
  </a>
  <a href="https://linktr.ee/caesarmario_">
    <img src="https://img.shields.io/badge/Follow%20My%20Other%20Works-019875?style=flat&labelColor=019875&link=https:/linktr.ee/caesarmario_" alt"Linktree"/>
  </a>
</p>
<br>


## 📃 Table of Contents:
  - [About Project](#-about-project)
  - [Objectives](#-objectives)
  - [Data Set Description](#-data-set-description)
<br>

## 🖋 About Project
*   This repository contains:
    - ETL files using Pentaho Data Integration (PDI)
    - Codes to create OLAP (SQL)
    - Codes to select data from OLTP (SQL)
    - Codes to perform random testing (SQL)

    for credit card datasets provided by <a href="https://www.kaggle.com/rikdifos/credit-card-approval-prediction"><b>Seanny (rikdifos)</b></a>.<br>

*   This project will also create:
    - **2 dimension tables** (Applicant_Dimension and CreditRecord_Dimension), 
    - **Time dimension** (Time_Dimension), and 
    - **1 fact table** (CreditCard_Fact).

    using PDI.
<br><br>

## 📌 Objectives
*   Perform ETL using PDI for both datasets.
*   Create time dimension using PDI.
*   Create fact table using PDI.
<br><br>

## 🧾 Data Set Description
*   The dataset description can be seen <a href="https://www.kaggle.com/rikdifos/credit-card-approval-prediction/discussion/119320"><b>here</b></a>.
<br><br>


## 🔌 Connection Configuration
```
username: 	sa
pass: 		qwer
```
### 📀🔌 OLTP Configuration
![OLTP Config](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/OLTP_Configuration.png)<br>
### 💿🔌 OLAP Configuration
![OLAP Config](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/OLAP_Configuration.png)<br>

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>


## ⚙ ETL Process
### 👨‍💼 Application Record
![Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension.png)<br>
#### ▶ Table Input Configuration
![Table Input - Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension/1%20-%20Table%20Input.png)
   - Importing application table from OLTP. <br>
#### ▶ Sort Rows Configuration
![Sort Rows - Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension/2%20-%20Sort%20Rows.png)
   - Sort data based on applicant ID. <br>
#### ▶ Unique Rows Configuration
![Unique Rows - Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension/3%20-%20Unique%20Rows.png)
   - Filter duplicate applicant ID. <br>
#### ▶ Replace in String Configuration
![Replace in String - Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension/4%20-%20Replace%20in%20String.png)
   - Replace some values to make it easier to understand. <br>
#### ▶ Add Constants Configuration
![Add Constants - Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension/5%20-%20Add%20Constants.png)
   - Add new columns with constant date (October 1, 2021). <br>
#### ▶ Calculator Configuration
![Calculator - Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension/6%20-%20Calculator.png)
   - Calculate DOB and date of applicant start working based on current date (October 1, 2021).
   - Calculate age of applicant based on current year (2021). <br>
#### ▶ Filter Rows Configuration
![Filter Rows - Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension/7%20-%20Filter%20Rows.png)
   - Filter applicant data which has null values.
   - Filter applicant data who is less than 21 y.o. <br>
#### ▶ Add Sequence Configuration
![Add Sequence - Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension/8%20-%20Add%20Sequence.png)
   - Adding Index Applicant (to replace ID as primary key). <br>
#### ▶ Select Values Configuration
![Select Values - Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension/9%20-%20Select%20Values.png)
   - Select columns that will entered OLAP. <br>
#### ▶ Table Output Configuration
![Table Output - Application](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Applicant_Dimension/10%20-%20Table%20Output.png)
   - Exporting application table to OLAP (Application Dimension). <br>

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>

### 💶 Credit Record
![Credit Record](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/CreditRecord_Dimension.png)<br>
#### ▶ Table Input Configuration
![Table Input - Credit Record](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/CreditRecord_Dimension/1%20-%20Table%20Input.png)
   - Importing credit record table from OLTP. <br>
#### ▶ Sort Rows Configuration
![Sort Rows - Credit Record](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/CreditRecord_Dimension/2%20-%20Sort%20Rows.png)
   - Sort data based on applicant ID. <br>
#### ▶ Add Constants Configuration
![Add Constants - Credit Record](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/CreditRecord_Dimension/3%20-%20Add%20Constants.png)
   - Add new columns with constant date (October 1, 2021). <br>
#### ▶ Calculator Configuration
![Calculator - Credit Record](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/CreditRecord_Dimension/4%20-%20Calculator.png)
   - Calculate loan payment's month based on current date (October 1, 2021). <br>
#### ▶ Add Sequence Configuration
![Add Sequence - Credit Record](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/CreditRecord_Dimension/5%20-%20Add%20Sequence.png)
   - Adding CreditRecord_ID (to replace Applicant ID as primary key). <br>
#### ▶ Select Values Configuration
![Select Values - Credit Record](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/CreditRecord_Dimension/6%20-%20Select%20Values.png)
   - Select columns that will entered OLAP. <br>
#### ▶ Table Output Configuration
![Table Output - Credit Record](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/CreditRecord_Dimension/7%20-%20Table%20Output.png)
   - Exporting application table to OLAP (Credit Record Dimension). <br>

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>

### ⌚ Time Dimension
![Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension.png)<br>
#### ▶ Generate Rows Configuration
![Generate Rows - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/1%20-%20Generate%20Rows.png)
   - Generate a column with specific date (January 1, 2016). <br>
#### ▶ Add Sequence Configuration
![Add Sequence - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/2%20-%20Add%20Sequence.png)
   - Add row with sequence from 1 to 99999. <br>
#### ▶ Calculator Configuration
![Calculator - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/3%20-%20Calculator.png)
   - Caluclating start date with sequence data to make next date (ex: January 2, 2016; January 3, 2016)
   - Creating new columns (Day, Months, and Year). <br>
#### ▶ Data Grid Configuration
![Data Grid - Time_1](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/4%20-%20Data%20Grid.png)<br>
![Data Grid - Time_2](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/4%20-%20Data%20Grid_2.png)
   - Creating . <br>
#### ▶ Stream Lookup Configuration
![Stream Lookup - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/5%20-%20Stream%20Lookup.png)
   - Combine 'Month' from Calculator node to 'No_Month' from Data Grid node. <br>
#### ▶ Modified JavaScript Value Configuration
![Modified JavaScript - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/6%20-%20Modified%20JavaScript.png)
   - Creating time ID using JavaScript code. <br>
#### ▶ Select Values Configuration
![Select Values - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/7%20-%20Select%20Values.png)
   - Select columns that will entered OLAP. <br>
#### ▶ Table Output Configuration
![Table Output - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/8%20-%20Table%20Output.png)
   - Exporting time dimension to OLAP. <br>

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>


### 💳 Credit Card Fact
![Credit Fact](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/CreditCard_Fact.png)<br>
#### ▶ Generate Rows Configuration
![Generate Rows - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/1%20-%20Generate%20Rows.png)
   - Generate a column with specific date (January 1, 2016). <br>
#### ▶ Add Sequence Configuration
![Add Sequence - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/2%20-%20Add%20Sequence.png)
   - Add row with sequence from 1 to 99999. <br>
#### ▶ Calculator Configuration
![Calculator - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/3%20-%20Calculator.png)
   - Caluclating start date with sequence data to make next date (ex: January 2, 2016; January 3, 2016)
   - Creating new columns (Day, Months, and Year). <br>
#### ▶ Data Grid Configuration
![Data Grid - Time_1](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/4%20-%20Data%20Grid.png)<br>
![Data Grid - Time_2](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/4%20-%20Data%20Grid_2.png)
   - Creating . <br>
#### ▶ Stream Lookup Configuration
![Stream Lookup - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/5%20-%20Stream%20Lookup.png)
   - Combine 'Month' from Calculator node to 'No_Month' from Data Grid node. <br>
#### ▶ Modified JavaScript Value Configuration
![Modified JavaScript - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/6%20-%20Modified%20JavaScript.png)
   - Creating time ID using JavaScript code. <br>
#### ▶ Select Values Configuration
![Select Values - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/7%20-%20Select%20Values.png)
   - Select columns that will entered OLAP. <br>
#### ▶ Table Output Configuration
![Table Output - Time](https://github.com/caesarmario/ETL-credit-card-dataset-using-pentaho/blob/main/Screenshots/Time_Dimension/8%20-%20Table%20Output.png)
   - Exporting time dimension to OLAP. <br>

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>

## 🙌 Support me!

👉 If you find this project useful, **please ⭐ this repository 😆**!

---

👉 _More about myself: <a href="https://linktr.ee/caesarmario_"> here </a>_
