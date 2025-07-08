# TatvaSoft Internship Tasks - Day 1

## 📅 Day 1 - PostgreSQL Basics: Table Creation & CRUD Operations

This task focuses on using **PostgreSQL** to create and manage relational data with SQL queries. The following key operations were performed:

---

## 📌 Objectives

- Create a table using `CREATE TABLE`
- Insert records with `INSERT INTO`
- Update data using `UPDATE`
- Delete records using `DELETE`
- Fetch data using `SELECT`
- Rename table with `ALTER TABLE`

---

## 🚀 Getting Started

### ✅ Step 1: Install PostgreSQL

You can use either **pgAdmin** (GUI) or **psql** (CLI) for working with PostgreSQL.

#### 🔹 Windows:
- Download from: https://www.postgresql.org/download/windows/
- Install and remember:
  - Default username: `postgres`
  - Password: (you set during setup)

#### 🔹 macOS:
```bash
brew install postgresql
brew services start postgresql
```
#### 🔹 For Linux (Ubuntu/Debian):
```bash
sudo apt update
sudo apt install postgresql postgresql-contrib
```

### ✅ Step 2: Access PostgreSQL

#### 🔹 Using CLI (psql):
```bash
psql -U postgres
```

#### 🔹 Using GUI (pgAdmin):
- Launch pgAdmin and connect to your local server using the credentials.

### ✅ Step 3: Execute SQL Queries
You can run the queries manually or execute the full file:

📂 Option 1: Using pgAdmin
Open `queries.sql` and paste the content into the query editor.

📂 Option 2: Using Terminal
```bash
psql -U postgres -f queries.sql
```
---
### 📄 SQL File Location

The full set of SQL queries is available in `queries.sql`

---
### ✅ Output Preview
```bush
SELECT * FROM company_staff;
```
This query will return the remaining employee records after all operations.

---
### ✅ Outcome
Understood how to work with relational databases using SQL commands. Practiced creating, updating, deleting, and selecting data efficiently using PostgreSQL.