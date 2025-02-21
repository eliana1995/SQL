-- Create the database
CREATE DATABASE LibrarySystem;

-- Switch to the newly created database
USE LibrarySystem;

-- Create books table
CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    available BOOLEAN
);

-- Create users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

-- Create loans table
CREATE TABLE loans (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    book_id INT,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Sample data for books
INSERT INTO books (title, author, available) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', TRUE),
('1984', 'George Orwell', TRUE),
('To Kill a Mockingbird', 'Harper Lee', TRUE);

-- Sample data for users
INSERT INTO users (name, email) VALUES
('Eliana makdisy', 'eliana@example.com'),
('Elie khoury', 'elie@example.com');

-- Sample data for loans
INSERT INTO loans (user_id, book_id, loan_date, return_date) VALUES
(1, 2, '2025-02-20', '2025-03-20'),
(2, 1, '2025-02-18', '2025-03-18');
