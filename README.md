🔖 Project Overview

Online Electronic Store is a Java-based e-commerce web application built to simulate an online store for buying and selling electronic products. It allows users to browse products, register & login, add items to cart, place orders, and view order history. Admin users can manage products and view orders too.

This full-stack project combines Java (Spring/JDBC/Servlet/JSP) with HTML, CSS, JavaScript for the frontend and uses MySQL as the database.
(Adjust the backend framework if it’s not Spring — but the base idea is similar.)

🛠️ Technologies Used
Layer	Technologies
🧠 Backend	Java (Servlets/JSP/Controllers)
📄 Frontend	HTML, CSS, JavaScript
🗄️ Database	MySQL
🛠️ Web Server	Apache Tomcat
📦 Build	Maven / Gradle
📊 Optional Libraries	Bootstrap (UI), JDBC (DB Access)

➡️ You may also find HTML templates for pages such as Home, Products, Login/Signup, Cart, Checkout and Admin Dashboard within the repo. 
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
