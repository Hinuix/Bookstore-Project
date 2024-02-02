-- Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    genre VARCHAR(50),
    price DECIMAL(8, 2),
    publication_date DATE
);

-- Authors Table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
    nationality VARCHAR(50),
    birth_date DATE
);

-- Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(255)
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Order_Items Table
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    unit_price DECIMAL(8, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Sample Books Table
INSERT INTO Books (book_id, title, author_id, genre, price, publication_date)
VALUES
    (1, 'The Great Gatsby', 1, 'Fiction', 12.99, '1925-04-10'),
    (2, 'To Kill a Mockingbird', 2, 'Fiction', 10.99, '1960-07-11'),
    (3, '1984', 3, 'Dystopian Fiction', 9.99, '1949-06-08');

-- Sample Authors Table
INSERT INTO Authors (author_id, author_name, nationality, birth_date)
VALUES
    (1, 'F. Scott Fitzgerald', 'American', '1896-09-24'),
    (2, 'Harper Lee', 'American', '1926-04-28'),
    (3, 'George Orwell', 'British', '1903-06-25');

-- Sample Customers Table
INSERT INTO Customers (customer_id, customer_name, email, phone, address)
VALUES
    (1, 'John Smith', 'john@example.com', '123-456-7890', '123 Main St, Anytown, USA'),
    (2, 'Jane Doe', 'jane@example.com', '987-654-3210', '456 Elm St, Othertown, USA');

-- Sample Orders Table
INSERT INTO Orders (order_id, customer_id, order_date)
VALUES
    (1, 1, '2023-01-15'),
    (2, 2, '2023-02-28');

-- Sample Order_Items Table
INSERT INTO Order_Items (order_item_id, order_id, book_id, quantity, unit_price)
VALUES
    (1, 1, 1, 2, 12.99),
    (2, 2, 2, 1, 10.99);
