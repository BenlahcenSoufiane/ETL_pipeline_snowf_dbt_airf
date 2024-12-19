# ELT Pipeline: dbt, Snowflake, and Airflow

This project demonstrates how to build a complete ELT (Extract, Load, Transform) pipeline in 1 hour using industry-standard tools like **dbt**, **Snowflake**, and **Airflow**. It walks through the setup, data modeling techniques, and orchestration processes needed for modern data engineering workflows.

## Features 🚀
- **Data Modeling**: Create source, staging, fact tables, and data marts.
- **dbt Setup**: Configure `dbt_project.yml`, packages, and macro functions.
- **Snowflake Integration**: Use Snowflake as the data warehouse, with Role-Based Access Control (RBAC) concepts.
- **Airflow Orchestration**: Deploy and orchestrate the dbt models with Airflow.
- **Testing**: Implement generic and singular tests to ensure data quality.

---

## Setup Instructions 🛠️

### Prerequisites
- Python 3.8+
- Airflow installed locally or via Docker
- Snowflake account (free trial works)
- dbt CLI installed
- Snowflake connector for Python

### Steps to Set Up
1. **Clone this repository**:
   ```bash
   git clone https://github.com/yourusername/elt-pipeline.git
   cd elt-pipeline
Set up dbt:

Install dbt CLI:
bash
Copy code
pip install dbt-snowflake
Configure profiles.yml for Snowflake:
```yaml
Copy code
your_project:
  outputs:
    dev:
      type: snowflake
      account: <your_snowflake_account>
      user: <your_username>
      password: <your_password>
      role: <your_role>
      database: <your_database>
      schema: <your_schema>
      warehouse: <your_warehouse>
      threads: 4
  target: dev
```
Configure Airflow:

Use the provided dags/ folder to deploy your dbt orchestration DAG.
Update your airflow.cfg file to include Snowflake connections or use the Airflow UI to set up connections.
Run dbt:
```bash
Copy code
dbt run
dbt test
Deploy with Airflow:
```
Start Airflow:
```bash
airflow scheduler
airflow webserver
```
Trigger the DAG for dbt models in the Airflow UI.
        
## Key Concepts Covered 💡
Source and Staging Tables: Create base layers for data transformation.
Fact Tables and Data Marts: Transform raw data into meaningful insights.
Macro Functions: Write reusable dbt code for complex transformations.
Data Quality Testing: Ensure reliable and accurate data pipelines.
Tools Used 🛠️
dbt: For data transformation and modeling.
Snowflake: As the cloud-based data warehouse.
Airflow: To orchestrate the entire pipeline.
