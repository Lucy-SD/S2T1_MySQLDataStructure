# 📚 MySQL Data Structure: Modeling Exercises

**👨‍💻 Author**: Lucy Castro

**🧠 Learning Focus**: Database Design, Entity-Relationship Modeling, MySQL

**🛠️ Tools**: XAMPP, MySQL Workbench

**💾 Database**: MySQL


## 📄 Description
This repository contains database modeling exercises focused on:

- Entity-Relationship (ER) diagram design

- Relational database schema implementation

- SQL table creation and relationships

- Real-world scenario translation to structured databases

- Exercises model three distinct business cases:

    + Optical store management

    + Pizzeria ordering system

    + YouTube-like platform architecture

## 💻 Technologies Used

🔹 XAMPP (Apache/MySQL/PHP stack)

🔹 MySQL Workbench (Database modeling)

🔹 Git & GitHub (Version control)


## 📋 Requirements

✅ XAMPP installed (Download)

✅ MySQL Workbench (Download)

✅ Git

✅ Basic SQL knowledge


## 🛠️ Installation

Clone repository:

bash
git clone https://github.com/Lucy-SD/S2T1_MySQLDataStructure
Start MySQL via XAMPP Control Panel

Import SQL files in MySQL Workbench:

File → Run SQL Script → Select .sql file from exercise folder

## 📂 Exercise Catalog
<details> <summary><strong>🔍 Level 1: Optical Store</strong></summary>
Entities Modeled:

Suppliers (Name, Address, NIF, Contact)

Glasses (Brand, Prescription, Frame Type, Colors, Price)

Customers (Name, Contact, Referral Tracking)

Employees (Sales Tracking)

Relationships:

One supplier → Multiple brands

One employee → Multiple sales

Customer referrals (Self-relationship)

</details><details> <summary><strong>🍕 Level 1: Pizzeria System</strong></summary>
Entities Modeled:

Customers (Address Hierarchy: Province → Location)

Orders (Delivery/Store Pickup, Product Quantities)

Products (Pizzas/Burgers/Drinks with Categories)

Stores & Employees (Cooks/Delivery Roles)

Relationships:

Order-Product (Many-to-Many with Quantity)

Location Hierarchy (Province → Location → Store)

Delivery tracking (Employee-Order-Timestamp)

</details><details> <summary><strong>📹 Level 2: YouTube-like Platform</strong></summary>
Entities Modeled:

Users (Demographics, Channels)

Videos (Metadata, States: Public/Hidden/Private)

Playlists (Visibility Settings)

Interactions (Likes/Dislikes, Comments, Subscriptions)

Relationships:

Tagging system (Video-Tag Many-to-Many)

Reaction tracking (User-Video-Comment Timestamps)

Channel subscriptions (User-User Relationship)

</details>
## 🎯 Learning Goals
✅ Translate business requirements into ER diagrams
✅ Implement 1:1, 1:N, and N:M relationships
✅ Handle hierarchical data (e.g., location systems)
✅ Model user interaction patterns (likes/comments)
✅ Apply normalization principles

## 🏆 Best Practices Implemented
✔️ Consistent Naming Conventions (snake_case, prefix-free)
✔️ Atomic Data Values (Split addresses into components)
✔️ Appropriate Keys (Surrogate PKs, meaningful FKs)
✔️ Constraint Enforcement (NOT NULL, UNIQUE where applicable)
✔️ Relationship Documentation (MySQL Workbench EER diagrams)

## 🤝 Contributions
⭐ Star the repository

🍴 Fork the project

Create branch: git checkout -b feature/improvement

Commit changes: git commit -m 'Add [feature]'

Push: git push origin feature/improvement

📥 Open a pull request

## ⚠️ Note
All exercises were solved using:

XAMPP v3.3.0 for MySQL database hosting

MySQL Workbench 8.0 for schema design and SQL scripting

Physical models exported as .sql files in each exercise folder

## 🚀 Thanks for exploring! Feedback and issues welcome via GitHub Issues.
