# WEC 2026 Grid & Analytics System

## 🏎️ Project Overview
This project is a comprehensive data management and visualization system for the **2026 World Endurance Championship (WEC)**. It integrates a relational database, a Python-based search interface, and an interactive Power BI dashboard to analyze the global driver grid and manufacturer distribution.

## 🛠️ Tech Stack
* **Database:** MySQL (Relational Schema for Hypercar/LMGT3)
* **Visualization:** Power BI (Global Nationality Mapping & Class Analytics)
* **Programming:** Python (CRUD-style database interaction)
* **Version Control:** GitHub Desktop

## 📂 Repository Contents
* `wec learning thingy.sql`: The full SQL dump to recreate the database.
* `wec thingy.pbix`: The interactive Power BI dashboard file.
* `wec thing.py`: Python script for querying driver data from the DB.

## 🚀 How to Use
1. **Database:** Import the `.sql` file into MySQL Workbench.
2. **Analysis:** Open the `.pbix` file to view the 2026 grid distribution.
3. **Search:** Run `python "wec thing.py"` to search for specific drivers like Rossi or Gunn.