# Library Management System - SQL

This project demonstrates a simple **Library Management System** using SQL. The system is designed to manage books, users, and transactions in a library. The database allows for operations like borrowing, returning books, and checking available books.

## Database Structure

### 1. **Users Table**
- `user_id` (Primary Key)
- `name` (User's name)
- `email` (User's email)
- `registration_date` (Date of user registration)

### 2. **Books Table**
- `book_id` (Primary Key)
- `title` (Title of the book)
- `author` (Author of the book)
- `genre` (Genre of the book)
- `available_copies` (Number of copies available)

### 3. **Transactions Table**
- `transaction_id` (Primary Key)
- `user_id` (Foreign Key referencing Users)
- `book_id` (Foreign Key referencing Books)
- `borrow_date` (Date when the book is borrowed)
- `return_date` (Date when the book is returned)

