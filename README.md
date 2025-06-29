# Air_Crashes_Analysis-SQL-Power-Bi
# ✈️ Aircraft Incidents Analysis using - SQL-Power-Bi

This repository contains a **SQl and Power BI dashboard project** built to analyze global aircraft incidents using real-world structured data imported from a SQL Server database.

## 📊 Project Overview

The project aims to provide insights into:
- Aircraft safety trends
- Country-wise and operator-wise incident patterns
- Survival and fatality rates
- Manufacturer and aircraft-specific risks
- Temporal patterns (yearly, monthly, quarterly)

## 📁 Dataset Schema

The data is sourced from a SQL table named `Aircraft_Incidents` with the following columns:

| Column                 | Data Type     | Description                                     |
|------------------------|---------------|-------------------------------------------------|
| `Year`                | INT           | Year of the incident                            |
| `Quarter`             | VARCHAR(15)   | Quarter in which the incident occurred          |
| `Month`               | VARCHAR(20)   | Month of the incident                           |
| `Day`                 | TINYINT       | Day of the month                                |
| `Country_Region`      | VARCHAR(100)  | Country where incident occurred                 |
| `Aircraft_Manufacturer` | VARCHAR(100)| Manufacturer of the aircraft                    |
| `Aircraft`            | VARCHAR(100)  | Type/Model of aircraft                          |
| `Location`            | VARCHAR(150)  | City or region of the incident                  |
| `Operator`            | VARCHAR(100)  | Operating airline/company                       |
| `Ground`              | INT           | Ground casualties                               |
| `Fatalities_Air`      | INT           | Fatalities among onboard passengers             |
| `Aboard`              | INT           | Total passengers aboard during the incident     |

## 🧠 Analytical Scope

We explored **15+ intermediate to professional-level SQL and DAX questions**, including:

- Incidents over time (year, month, quarter)
- Top 10 most affected countries, locations, and operators
- Fatality and survival rate analysis
- Risk breakdowns by aircraft manufacturer and operator
- Ground vs. air casualties
- Repeat incident locations

## 🛠 Tools Used

- **Power BI Desktop**  
- **SQL Server (as data source)**  
- **DAX Measures** for advanced calculations  
- **Power Query Editor** for ETL transformations

## 📌 Key DAX Measures

- `Total Fatalities`
- `Survival Rate (%)`
- `Fatality Rate (%)`
- `Average Survivors`
- `Incidents Count`
- And more...


## 📄 How to Use

1. Clone or download this repository.
2. Open the `.pbix` file in Power BI Desktop.
3. Update the SQL Server connection string if needed.
4. Refresh data or edit queries via **Transform Data**.
5. Explore the visuals across report pages.


## 🛡️ Data Safety & Refresh

- The model uses **import mode** with data refresh enabled.
- Ensure you have access to the original SQL Server to refresh the latest records.

## 🚀 Future Improvements

- Add incident severity classification
- Integrate weather or flight phase data
- Enable dynamic filtering by aircraft age or flight type
- Implement row-level security (RLS) for airline-specific access

## 🙌 Contributors

Developed by [Vikas Sajwan]([https://github.com/Vikas-Sajwan])  
Inspired by real-world aviation data analytics.

---

> ✨ Built with curiosity, data, and a passion for aviation safety.
