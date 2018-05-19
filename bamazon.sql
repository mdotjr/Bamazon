-- create the "bamazon" database -- 
CREATE DATABASE bamazon;

-- Makes it so all of the following code will affect bamazon --
USE bamazon;

-- Creates the table "products" within bamazon --
CREATE TABLE products (
item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
product_name VARCHAR(30) NOT NULL,
department_name VARCHAR(10),
price DECIMAL(10,2),
stock_quantity INTEGER (11) NOT NULL,
PRIMARY KEY(item_id)

)


-- Insert mock data rows containing data in all named columns --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("PS4", "Electronics", 199.99, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("MacBook", "Electronics", 1200.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Fossil Watch", "Accessories", 100.00, 45);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Dad Hats", "Clothing", 9.99, 75);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Beats By Dre", "Audio", 99.99, 35);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Centry Sofa", "Home", 799.99, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Playground set", "Outdoor Play Equipment", 299.99, 15);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iPhone case", "Devices", 5.99, 150);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Crockpot", "Kitchenware", 85.00, 60);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Fire TV Stick", "Electronics", 45.00, 200);
