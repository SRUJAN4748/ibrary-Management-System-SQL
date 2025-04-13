-- Create Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    registration_date DATE
);

-- Create Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    available_copies INT
);

-- Create Transactions Table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    user_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Insert sample data into Users
INSERT INTO Users (user_id, name, email, registration_date) VALUES
(1, 'John Doe', 'john@example.com', '2024-01-15'),
(2, 'Alice Smith', 'alice@example.com', '2024-02-20'),
(3, 'Bob Johnson', 'bob@example.com', '2024-03-05');

-- Insert sample data into Books
INSERT INTO Books (book_id, title, author, genre, available_copies) VALUES
(1, 'Harry Potter', 'J.K. Rowling', 'Fantasy', 5),
(2, 'Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 0),
(3, 'The Alchemist', 'Paulo Coelho', 'Fiction', 2),
(4, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 3);

-- Insert sample data into Transactions
INSERT INTO Transactions (transaction_id, user_id, book_id, borrow_date, return_date) VALUES
(1, 1, 1, '2025-04-10', NULL),
(2, 1, 3, '2025-04-12', NULL),
(3, 2, 2, '2025-03-28', '2025-04-05');
