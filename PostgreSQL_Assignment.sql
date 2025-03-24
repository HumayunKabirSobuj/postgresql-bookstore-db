-- Active: 1742229780318@@127.0.0.1@5432@bookstore_db@public

-- Create books table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(50) NOT NULL,
    price FLOAT4 CHECK (price >= 0),
    stock INT CHECK (stock >= 0),
    published_year INT
);


-- Create customers table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(80) UNIQUE NOT NULL,
    joined_date DATE DEFAULT CURRENT_DATE
);

-- Create orders table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id) ON DELETE CASCADE,
    book_id INTEGER REFERENCES books(id) ON DELETE CASCADE,
    quantity INT CHECK (quantity > 0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

drop TABLE orders;
drop TABLE customers;
drop TABLE books;

-- Insert data into books table

INSERT INTO books (title, author, price, stock, published_year) VALUES
('Projuktir Pothe', 'Rakib Hasan', 40.00, 10, 1999),
('Coding-er Soundorjo', 'Sadia Akter', 35.00, 5, 2008),
('JavaScript Shohoj Path', 'Mahmudul Islam', 30.00, 8, 2014),
('Code Punorgothon', 'Tanvir Ahmed', 50.00, 3, 1999),
('Database Design Neetimala', 'Nusrat Jahan', 20.00, 0, 2018);


SELECT * FROM books;


-- Insert data into customers table

INSERT INTO customers (name, email) VALUES
('Rahim', 'rahim@email.com'),
('Karim', 'karim@email.com'),
('Sumi Akter', 'sumi@email.com');


SELECT * FROM customers;

-- Insert data into orders table

INSERT INTO orders (customer_id, book_id, quantity) VALUES
(1, 2, 1),
(2, 1, 1),
(1, 3, 2);

SELECT * FROM orders;


-- Problem 1: Find books that are out of stock

SELECT * FROM books
    WHERE stock=0;

-- Problem 2: Retrieve the most expensive book in the store

SELECT * FROM books ORDER BY price DESC LIMIT 1;


-- Problem 3: Find the total number of orders placed by each customer


SELECT customers.name, COUNT(orders.id) as total_order FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.id;

-- Problem 4: Calculate the total revenue generated from book sales

SELECT SUM(books.price * orders.quantity) as total_revenue FROM orders
    JOIN books ON books.id = orders.book_id;

