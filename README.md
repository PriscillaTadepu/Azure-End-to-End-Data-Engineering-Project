# 🚀 Azure End-to-End Data Engineering Project
End-to-End Azure Data Engineering Project using ADF, ADLS Gen2, Databricks, PySpark, and Synapse Analytics.
This project demonstrates the implementation of an end-to-end Azure Data Engineering solution.

The pipeline ingests raw data into Azure Data Lake Storage Gen2 using Azure Data Factory, transforms data using Azure Databricks and PySpark, and loads curated datasets into Azure Synapse Analytics for reporting and analysis.

Technologies Used:
- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure Databricks
- PySpark
- Azure Synapse Analytics
- SQL
- GitHub

## 🏗️ Architecture Diagram
<img width="1536" height="1024" alt="Project Architecture" src="https://github.com/user-attachments/assets/d40afa61-42a1-418b-ae11-6474f8d1ec75" />


## 🏗️ Architecture Flow

```
Kaggle AdventureWorks Dataset
            │
            ▼
  GitHub Repository
            │
            ▼
 Azure Data Factory
            │
            ▼
 ADLS Gen2 (Bronze)
            │
            ▼
 Azure Databricks
   (PySpark ETL)
            │
            ▼
 ADLS Gen2 (Silver)
            │
            ▼
 Azure Synapse Analytics
     (Gold Layer)
            │
            ▼
        Power BI
 ```
#### Step 1: Download Dataset
- Downloaded the **AdventureWorks Sample Dataset** from Kaggle.
- The dataset contains sales, customer, product, and order information used for analytics.

---

#### Step 2: Upload Dataset to GitHub
- Uploaded the raw CSV files to a GitHub repository.
- GitHub serves as the source location for Azure Data Factory.

---

#### Step 3: Data Ingestion using Azure Data Factory
- Created an Azure Data Factory pipeline.
- Configured a Copy Activity to read CSV files directly from the GitHub repository.
- Loaded the raw data into Azure Data Lake Storage Gen2.

---

#### Step 4: Bronze Layer (Raw Data)
- Stored the ingested data in the **Bronze** layer of ADLS Gen2.
- Preserved the original data without any modifications.
- Used as the source for downstream processing.

---

#### Step 5: Data Transformation using Azure Databricks
- Connected Azure Databricks to ADLS Gen2.
- Processed the Bronze data using **PySpark** notebooks.
- Performed:
  - Data Cleaning
  - Null Value Handling
  - Duplicate Removal
  - Data Validation
  - Data Type Conversion
  - Business Transformations

---

#### Step 6: Silver Layer (Cleaned Data)
- Stored the transformed data in the **Silver** layer.
- Saved the processed data in **Delta format**.
- Created optimized datasets for analytics.

---

#### Step 7: Gold Layer using Azure Synapse Analytics
- Connected Azure Synapse Analytics to the Silver layer.
- Created curated analytical datasets.
- Generated business-ready tables for reporting.

---

#### Step 8: Reporting using Power BI
- Connected Power BI to Azure Synapse Analytics.
- Developed interactive dashboards and reports.
- Visualized KPIs, sales trends, customer insights, and business performance.

---
