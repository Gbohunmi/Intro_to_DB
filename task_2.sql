CREATE TABLE Authors(
    author_id INT Primary Key AUTO_INCREMENT, 
    author_name VARCHAR(215)
)

CREATE TABLE Books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    price DOUBLE,
    publication_date DATE
);
CREATE TABLE Customers(
    customer_id INT Primary Key AUTO_INCREMENT,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders(
    order_id INT Primary Key AUTO_INCREMENT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
)

CREATE TABLE Order_Details(
    orderdetailid INT Primary Key AUTO_INCREMENT,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    book_id  INT,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
)