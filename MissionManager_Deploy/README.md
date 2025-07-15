# MissionManager Deploy – MissionApi (ASP.NET Core MVC)

This is the **backend API & UI project** for the MissionManager application built with **ASP.NET Core MVC**, **Entity Framework Core**, **Bootstrap**, and **SQL Server**.

> 💡 Press `F5` in Visual Studio to build and launch the app with integrated Swagger UI and MVC views.

---

## 🚀 Tech Stack

- **Backend:** ASP.NET Core MVC (.NET )
- **ORM:** Entity Framework Core
- **Database:** SQL Server (`MissionTest25`)
- **UI:** Razor Views + Bootstrap
- **Testing Tool:** Swagger UI

---

## 📦 Key Features
- Admin/User login & session-based authentication
- Mission management (create/edit/delete missions)
- Theme and Skill association
- Volunteer application tracking
- SQL Server database integration
- Auto-generated Swagger API testing
- Ready for deployment and testing


---

## 🧪 Swagger Testing Guide

Swagger UI launches automatically when running the app in Visual Studio.

### ✅ Default Admin Login
```bush
EMAIL:    admin@tatvasoft.com  
PASSWORD: admin
```

### 🔍 Steps to Test API in Swagger:

1. Press F5 in Visual Studio to run the project.
2. Navigate to: http://localhost:5000/
3. Go to /Login endpoint → Click Try it out → Enter admin credentials.
4. Use the returned token (if available) to click Authorize → Paste the token.
5. You can now test all secured endpoints.
--- 

## 🧷 Deployment Notes
- Ensure SQL Server is running with DB `MissionTest25`.
- Update `appsettings.Development.json` with correct connection string if needed.
- For production, configure HTTPS and use production-ready DB credentials.

## 🤝 Contribution
Feel free to fork and contribute. PRs are welcome!