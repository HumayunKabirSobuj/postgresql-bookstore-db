-- Active: 1742229780318@@127.0.0.1@5432@bookstore_db@public

-- Create books table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
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