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

An optician, called "Cul d'Ampolla", wants to computerize customer management and eyeglass sales.

First of all, the optician wants to know who the supplier of each pair of glasses is. Specifically, they want to know about each supplier :
The name
The address (street, number, floor, door, city, postal code and country)
Telephone
Fax
NIF.

The optician's purchasing policy is based on the fact that glasses of one brand will be purchased from a single supplier (so you can get better prices), but they can buy glasses of several brands from one supplier. About the glasses you want to know:
The brand.
The graduation of each of the glasses.
The type of frame (floating, paste or metal).
The color of the frame.
The color of each glass.
The price.

From the customers you want to store:
The name.
The postal address.
The phone.
The email.
The registration date.
When a new customer arrives, store the customer who recommended the establishment (provided someone recommended it).
Our system will have to indicate which employee sold each pair of glasses.

</details><details> <summary><strong>🍕 Level 1: Pizzeria System</strong></summary>

You have been hired to design a website that allows you to order food at home online.

Keep the following guidelines in mind when modeling what the project database would look like:
For each client we store a unique identifier:
Name.
Surnames.
Address.
Postal code.
Location.
Province.
Phone number.
The locality and province data will be stored in separate tables. We know that a locality belongs to a single province, and that a province can have many localities. For each locality we store a unique identifier and a name. For each province we store a unique identifier and a name.

A person can place many orders, but a single order can only be placed by a single person. A unique identifier is stored for each order:
Date/time.
If the order is for home delivery or for collection in store.
The number of products selected of each type.
The total price.

An order can consist of one or several products.


Products can be pizzas, burgers, and drinks. A unique identifier is stored for each product:
Name.
Description.
Image.
Price.

In the case of pizzas, there are several categories that may change names throughout the year. A pizza can only be in one category, but a category can have many pizzas.


A unique identifier and name are stored for each category. An order is managed by a single store, and a store can manage many orders. A unique identifier is stored for each store:
Address.
Postal code.
Location.
Province.


Many employees can work in a store and an employee can only work in one store. For each employee, a unique identifier is stored:
Name.
Surnames.
NIF.
Telephone.
If you work as a cook or delivery person. For home delivery orders, it is important to save who the delivery person is who delivers the order and the date/time of delivery.


</details><details> <summary><strong>📹 Level 2: YouTube-like Platform</strong></summary>

We will try to make a simple model of what the database would be like for a scaled-down version of YouTube.

We store a unique identifier for each user:
Email.
Password.
Username/Aria.
Date of birth.
Sex.
Country.
Postal code.


A user posts videos. We store a unique identifier for each video:
A title.
A description.
One size.
The name of the video file.
Video duration.
A thumbnail.
The number of reproductions.
The number of likes.
The number of dislikes.

A video can have three different states: public, hidden and private. A video can have many tags. A tag is identified by a unique identifier and a tag name. It is important to save who is the user who publishes the video and at what date/time.


A user can create a channel. A channel has a unique identifier:
A name.
A description.
A creation date.


A user can subscribe to other users' channels. A user can like or dislike a video only once. A record must be kept of the users who have liked and disliked a particular video and the date/time they did so.


A user can create playlists with the videos they like. Each playlist has a unique identifier:
A name.
A creation date.
A status that indicates that it can be public or private.


A user can write comments on a given video. Each comment is identified by a unique identifier:
The text of the comment.
The date/time it was performed.


A user can mark a comment as "like" or "dislike". A record must be kept of the users who have marked a comment as "like" or "dislike", and the date/time they did so.

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

## 🚀 Thanks for exploring ¡! 
