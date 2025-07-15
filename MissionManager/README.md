# MissionManager

**MissionManager** is a full-stack web application built during the Tatvasoft Internship using **ASP.NET MVC** and **Bootstrap**. It allows admin users to manage volunteers, create missions, assign themes and skills, and track mission applications in a centralized dashboard.

---

## 🚀 Tech Stack

| Layer      | Technology           |
|------------|----------------------|
| Frontend   | HTML, CSS, Bootstrap |
| Backend    | ASP.NET MVC (C#), Ts    |
| Database   | PostgreSQL (`MissionTest25`) |
| ORM        | Entity Framework Core |

---

## 🎯 Features
- Admin Login & Secure Dashboard
- User (Volunteer) Management (Profile Add/Edit/Delete)
- Mission Creation with Image Upload
- Mission Themes & Skills Setup
- Mission Applications Tracking
- Search & Pagination
- Full Bootstrap-based Responsive UI

---
## 🛠️ Project Setup Guide

### ✅ Prerequisites

- Visual Studio 2022 or higher
- Install PostgreSQL
- .NET 8 SDK
- NuGet packages auto-restore in VS

---

## ⚙️ Steps to Run the Project

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/MissionManager.git
```

### 2. Open in Visual Studio
- Open the solution `.sln` file in Visual Studio
- Make sure `Mission.Api` or main project is set as Startup Project
- Update the `appsettings.Development.json`:
```bush
  "ConnectionStrings": {
    "DefaultConnection": "Host=localhost;
    Port=Write_Your_postgresSQL_Port;
    Database=MissionTest25;
    Username=postgres;
    Password=Write_Your_postgresSQL_Password;"
  },
  ```

### 3. Apply Database Migrations
Run these commands in the Package Manager Console (inside Visual Studio):

Set default project in Package Manager Console to your Data/Context layer

- Step 1: Add Migration
```bush
Add-Migration InitialCreate
```
- Step 2: Apply Migration
```bush
Update-Database
```
Make sure the database `MissionTest25` is created or will be auto-created on update.

### 4. Run the Project
```bush
F5 (Start with Debugging)
```
This will launch the application in your browser.

---

### 5. Swagger Testing Guide

After pressing **F5** in Visual Studio, Swagger UI will automatically launch in your browser at:

https://localhost:PORT/swagger/index.html

🔐 Default Admin Login Credentials for Testing:
```bush
Email: admin@tatvasoft.com
Password: YourPasswordHere
```

### 6 How to Test Login:

1. Go to the `/Login` endpoint.
2. Click on **"Try it out"**.
3. Paste the following JSON in the request body:
   ```json
   {
     "email": "admin@tatvasoft.com",
     "password": "YourPasswordHere"
   }
   ```
4. Click Execute.
5. If a token is returned, click the Authorize button (🔐 icon).
6. Paste:
```bush
Bearer <paste_token_here>
```
7. Now you can access protected endpoints.

### 🔧 Useful Commands (Developer Quick Reference)
Entity Framework Core
```bush
# Add a new migration
Add-Migration <MigrationName>

# Update the database
Update-Database

# Remove last migration (if needed)
Remove-Migration
```

## License
This project is created for educational & internship purposes. You are free to use and improve it.