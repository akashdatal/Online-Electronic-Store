GitHub

🚀 Project Features
✅ User Module
User registration and login
Browse all electronic products
Add products to cart
Remove or update cart items
Place orders and view order history

🎯 Admin Module

Admin login
Add/Edit/Delete products
View all customer orders
Manage inventory

🧪 Other Features
Responsive UI with HTML/CSS
Client-side interactivity with JavaScript
Secure user sessions
Data validation and form handling

📁 Suggested Directory Structure
Online-Electronic-Store/
├── src/
│   ├── main/
│   │   ├── java/         # Java backend files
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       ├── css/
│   │       ├── js/
│   │       └── jsp/       # JSP pages
├── pom.xml                # Maven config
├── README.md
└── sql/
    └── database.sql       # Database schema

🧩 How It Works
🔹 Backend (Java + Servlet)
User requests are handled by Servlet controllers
Servlets interact with the MySQL database using JDBC
Server forwards data to JSP pages for rendering
Sessions are managed for login persistence

🔹 Frontend (HTML/CSS/JS)
Pages are styled using CSS
Interactive elements (cart updates, form validation) use JavaScript
JSP renders dynamic HTML using backend data

🔹 Database (MySQL)
Typical tables:
users — store user info
products — store product catalog
cart — cart items per user
orders — order details

(Actual table names may vary — check your SQL scripts.)
🛠️ Setup & Run (Local)
✔ Prerequisites
JDK 8+
MySQL Server
Apache Tomcat
Maven (optional)

✔ Steps
Clone the repository
git clone https://github.com/akashdatal/Online-Electronic-Store.git
Create database
Open MySQL
Import database.sql
Configure database connection
Update JDBC config in context.xml or properties
Set DB username/password
Build & Deploy
Import to Eclipse/IntelliJ
Deploy on Tomcat
Access via:
http://localhost:8080/Online-Electronic-Store/
⚙️ Environment Variables

✔ Set DB variables once
✔ No hard-coded URLs in frontend (if using AJAX or API fetch)

🙌 Contributions

If you want to contribute:

Fork the repository

Create a new branch

Make your changes

Open a Pull Request

You may want to update the database scripts and URL paths depending on your code structure.

If the project uses Spring Boot, adapt the run steps accordingly (Spring Boot can run standalone).
(Ask me if you want a sample Spring Boot ready README too!)
