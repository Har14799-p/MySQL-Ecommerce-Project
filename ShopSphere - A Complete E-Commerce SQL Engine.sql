-- MySQL Database Project
-- The code to create the database is as follows:
create database shopsphere_db;
-- The code to use the database is as follows:
use shopsphere_db;
-- The code to create the Customers table is as follows:
create table Customers
(cust_id int primary key auto_increment, 
cust_first_name varchar(30),
cust_last_name varchar(30), 
cust_dob date,
cust_gender varchar(10),
cust_email varchar(30) unique key,
cust_phone varchar(10),
cust_street_address varchar(30),
cust_city varchar(30),
cust_state varchar(30),
cust_country varchar(30),
cust_zip varchar(10)
);
-- The code to describe the Customers table is as follows:
desc Customers;
-- The code to insert the values in the Customers table is as follows:
INSERT INTO Customers 
(cust_first_name, cust_last_name, cust_dob, cust_gender, cust_email, cust_phone, cust_street_address, cust_city, cust_state, cust_country, cust_zip)
VALUES 
('Alice', 'Johnson', '1990-05-12', 'Female', 'alice.johnson@yopmail.com', '9876543210', '123 Main St', 'New York', 'NY', 'USA', '10001'),
('Bob', 'Smith', '1985-08-23', 'Male', 'bob.smith@yopmail.com', '9876543211', '456 Oak Ave', 'Los Angeles', 'CA', 'USA', '90001'),
('Charlie', 'Brown', '1992-12-15', 'Male', 'charlie.brown@yopmail.com', '9876543212', '789 Pine Rd', 'Chicago', 'IL', 'USA', '60601'),
('Diana', 'Prince', '1988-03-30', 'Female', 'diana.prince@yopmail.com', '9876543213', '321 Elm St', 'Houston', 'TX', 'USA', '77001'),
('Ethan', 'Hunt', '1979-11-20', 'Male', 'ethan.hunt@yopmail.com', '9876543214', '654 Cedar Ln', 'Phoenix', 'AZ', 'USA', '85001'),
('Fiona', 'Gallagher', '1993-07-10', 'Female', 'fiona.gallagher@yopmail.com', '9876543215', '147 Maple Dr', 'Philadelphia', 'PA', 'USA', '19101'),
('George', 'Martin', '1980-01-05', 'Male', 'george.martin@yopmail.com', '9876543216', '258 Birch Blvd', 'San Antonio', 'TX', 'USA', '78201'),
('Hannah', 'Lee', '1995-06-18', 'Female', 'hannah.lee@yopmail.com', '9876543217', '369 Willow Way', 'San Diego', 'CA', 'USA', '92101'),
('Ivan', 'Petrov', '1987-09-09', 'Male', 'ivan.petrov@yopmail.com', '9876543218', '753 Aspen Cir', 'Dallas', 'TX', 'USA', '75201'),
('Julia', 'Roberts', '1991-02-25', 'Female', 'julia.roberts@yopmail.com', '9876543219', '951 Poplar St', 'San Jose', 'CA', 'USA', '95101');
-- The code to view all the values on the Customers table is as follows:
select * from Customers;
-- The code to alter the Customers table is as follows:
alter table Customers add cust_full_name varchar(30);
-- The code to update the values on the altered new column on the Customers table is as follows:
update Customers set cust_full_name=concat(cust_first_name,' ',cust_last_name) where cust_id=1;
update Customers set cust_full_name=concat(cust_first_name,' ',cust_last_name) where cust_id=2;
update Customers set cust_full_name=concat(cust_first_name,' ',cust_last_name) where cust_id=3;
update Customers set cust_full_name=concat(cust_first_name,' ',cust_last_name) where cust_id=4;
update Customers set cust_full_name=concat(cust_first_name,' ',cust_last_name) where cust_id=5;
update Customers set cust_full_name=concat(cust_first_name,' ',cust_last_name) where cust_id=6;
update Customers set cust_full_name=concat(cust_first_name,' ',cust_last_name) where cust_id=7;
update Customers set cust_full_name=concat(cust_first_name,' ',cust_last_name) where cust_id=8;
update Customers set cust_full_name=concat(cust_first_name,' ',cust_last_name) where cust_id=9;
update Customers set cust_full_name=concat(cust_first_name,' ',cust_last_name) where cust_id=10;
-- The code to update the Customer email on the Customers table is as follows:
update Customers set cust_email="alice.johnson@example.com" where cust_id=1;
update Customers set cust_email="bob.smith@example.com" where cust_id=2;
update Customers set cust_email="charlie.brown@example.com" where cust_id=3;
update Customers set cust_email="diana.prince@example.com" where cust_id=4;
update Customers set cust_email="ethan.hunt@example.com" where cust_id=5;
update Customers set cust_email="fiona.gallagher@example.com" where cust_id=6;
update Customers set cust_email="george.martin@example.com" where cust_id=7;
update Customers set cust_email="hannah.lee@example.com" where cust_id=8;
update Customers set cust_email="ivan.petrov@example.com" where cust_id=9;
update Customers set cust_email="julia.roberts@example.com" where cust_id=10;
-- The code to create Products table is as follows:
create table Products
(prod_id int primary key auto_increment,
 prod_name varchar(30),
 prod_type varchar(30),
 prod_sku varchar(30) unique,
 prod_price float,
 prod_qty int,
 prod_status varchar(30)
 );
 -- The code to insert the values on the Products table is as follows:
insert into Products
(prod_name,prod_type,prod_sku,prod_price,prod_qty,prod_status)
values
('Wireless Mouse', 'Electronics', 'SKU001', 19.99, 150, 'Available'),
('Bluetooth Speaker', 'Electronics', 'SKU002', 49.99, 75, 'Available'),
('Running Shoes', 'Footwear', 'SKU003', 89.50, 120, 'Available'),
('Notebook', 'Stationery', 'SKU004', 2.99, 500, 'Available'),
('Gaming Keyboard', 'Electronics', 'SKU005', 69.99, 40, 'Available'),
('Backpack', 'Accessories', 'SKU006', 39.99, 80, 'Available'),
('Water Bottle', 'Home & Kitchen', 'SKU007', 9.99, 200, 'Available'),
('LED Monitor', 'Electronics', 'SKU008', 129.99, 30, 'Available'),
('Office Chair', 'Furniture', 'SKU009', 149.99, 25, 'Available'),
('Sunglasses', 'Accessories', 'SKU010', 24.99, 100, 'Available');
-- The code to view all the values on the Products table is as follows:
select * from Products;
-- The code to update the values on the Products table is as follows:
update Products set prod_id=101 where prod_id=1;
update Products set prod_id=102 where prod_id=2;
update Products set prod_id=103 where prod_id=3;
update Products set prod_id=104 where prod_id=4;
update Products set prod_id=105 where prod_id=5;
update Products set prod_id=106 where prod_id=6;
update Products set prod_id=107 where prod_id=7;
update Products set prod_id=108 where prod_id=8;
update Products set prod_id=109 where prod_id=9;
update Products set prod_id=110 where prod_id=10;
-- The code to create the Categories table is as follows:
create table Categories
(category_id int primary key auto_increment,
 category_name varchar(30) unique,
 category_status varchar(20),
 include_in_menu varchar(10),
 category_description text,
 products_in_category int default 0
 );
 -- The code to insert the values on the Categories table is as follows:
insert into Categories 
(category_name, category_status, include_in_menu, category_description, products_in_category)
VALUES
('Electronics', 'Active', TRUE, 'Devices and gadgets including phones, laptops, and accessories.', 150),
('Footwear', 'Active', TRUE, 'Men\'s and women\'s shoes, sandals, and sports footwear.', 80),
('Furniture', 'Active', TRUE, 'Chairs, tables, beds, and other household furniture items.', 40),
('Accessories', 'Active', TRUE, 'Fashion accessories like bags, watches, and sunglasses.', 70),
('Stationery', 'Active', TRUE, 'Office and school supplies including notebooks and pens.', 200),
('Home & Kitchen', 'Active', TRUE, 'Home essentials and kitchen tools for daily use.', 120),
('Gaming', 'Active', TRUE, 'Gaming consoles, accessories, and gear.', 55),
('Books', 'Inactive', FALSE, 'Wide range of fiction, non-fiction, and educational books.', 0),
('Health & Beauty', 'Active', TRUE, 'Skincare, wellness, and health products.', 95),
('Toys & Baby', 'Active', TRUE, 'Toys, games, and baby care essentials.', 60);
-- The code to update the values on the Categories table is as follows:
update Categories set category_id=011 where category_id=1;
update Categories set category_id=012 where category_id=2;
update Categories set category_id=013 where category_id=3;
update Categories set category_id=014 where category_id=4;
update Categories set category_id=015 where category_id=5;
update Categories set category_id=016 where category_id=6;
update Categories set category_id=017 where category_id=7;
update Categories set category_id=018 where category_id=8;
update Categories set category_id=019 where category_id=9;
update Categories set category_id=020 where category_id=10;
-- The code to view all the values on the Categories table is as follows:
select * from Categories;
-- The code to create the SalesOrder table is as follows:
create table SalesOrder
(order_id int primary key auto_increment,
purchase_date datetime,
bill_to_name varchar(30),
ship_to_name varchar(30),
grand_total float,
order_status varchar(30),
billing_address text,
shipping_address text,
shipping_method varchar(30),
customer_email varchar(30),
subtotal float,
shipping_amount float,
customer_name varchar(30),
payment_method varchar(30),
total_refund float default 0.00
);
-- The code to insert the values on the SalesOrder is as follows:
insert into SalesOrder 
(purchase_date, bill_to_name, ship_to_name, grand_total, order_status,billing_address, shipping_address, shipping_method, customer_email, 
subtotal, shipping_amount, customer_name, payment_method, total_refund)
values
('2025-04-01 10:15:00', 'Alice Johnson', 'Alice Johnson', 79.99, 'Completed', '123 Main St, New York, NY', '123 Main St, New York, NY', 
'Standard Shipping','alice.johnson@example.com', 69.99, 10.00, 'Alice Johnson', 'Credit Card', 0.00),
 ('2025-04-02 14:30:00', 'Bob Smith', 'Bob Smith', 49.99, 'Shipped', '456 Oak Ave, Los Angeles, CA', '456 Oak Ave, Los Angeles, CA', 
 'Express Shipping','bob.smith@example.com', 45.99, 4.00, 'Bob Smith', 'PayPal', 0.00),
('2025-04-03 09:00:00', 'Charlie Brown', 'Lucy Van Pelt', 109.50, 'Pending','789 Pine Rd, Chicago, IL', '321 Elm St, Houston, TX', 
'Standard Shipping','charlie.brown@example.com', 99.50, 10.00, 'Charlie Brown', 'Credit Card', 0.00),
('2025-04-04 16:20:00', 'Diana Prince', 'Diana Prince', 129.99, 'Completed', '321 Elm St, Houston, TX', '321 Elm St, Houston, TX', 
'Standard Shipping','diana.prince@example.com', 119.99, 10.00, 'Diana Prince', 'Credit Card', 0.00),
('2025-04-05 11:45:00', 'Ethan Hunt', 'Benji Dunn', 159.99, 'Shipped','654 Cedar Ln, Phoenix, AZ', '789 Willow Way, San Diego, CA', 
'Express Shipping','ethan.hunt@example.com', 149.99, 10.00, 'Ethan Hunt', 'Credit Card', 0.00),
('2025-04-06 13:10:00', 'Fiona Gallagher', 'Fiona Gallagher', 39.99, 'Completed','147 Maple Dr, Philadelphia, PA', '147 Maple Dr, Philadelphia, PA', 
'Standard Shipping','fiona.gallagher@example.com', 35.99, 4.00, 'Fiona Gallagher', 'Debit Card', 0.00),
('2025-04-07 08:00:00', 'George Martin', 'George Martin', 289.99, 'Completed','258 Birch Blvd, San Antonio, TX', '258 Birch Blvd, San Antonio, TX', 
'Standard Shipping','george.martin@example.com', 279.99, 10.00, 'George Martin', 'Credit Card', 0.00),
('2025-04-08 15:45:00', 'Hannah Lee', 'Hannah Lee', 64.99, 'Pending','369 Willow Way, San Diego, CA', '369 Willow Way, San Diego, CA', 
'Standard Shipping','hannah.lee@example.com', 59.99, 5.00, 'Hannah Lee', 'PayPal', 0.00),
('2025-04-09 17:25:00', 'Ivan Petrov', 'Ivan Petrov', 99.99, 'Completed','753 Aspen Cir, Dallas, TX', '753 Aspen Cir, Dallas, TX', 
'Express Shipping','ivan.petrov@example.com', 89.99, 10.00, 'Ivan Petrov', 'Credit Card', 5.00),
('2025-04-10 12:50:00', 'Julia Roberts', 'Julia Roberts', 79.50, 'Refunded', '951 Poplar St, San Jose, CA', '951 Poplar St, San Jose, CA', 
'Standard Shipping','julia.roberts@example.com', 69.50, 10.00, 'Julia Roberts', 'Credit Card', 79.50);
-- The code to view all the values on the SalesOrder table is as follows:
select * from SalesOrder;
-- The code to update the values on the SalesOrder table is as follows:
update SalesOrder set order_id=1001 where order_id=1;
update SalesOrder set order_id=1002 where order_id=2;
update SalesOrder set order_id=1003 where order_id=3;
update SalesOrder set order_id=1004 where order_id=4;
update SalesOrder set order_id=1005 where order_id=5;
update SalesOrder set order_id=1006 where order_id=6;
update SalesOrder set order_id=1007 where order_id=7;
update SalesOrder set order_id=1008 where order_id=8;
update SalesOrder set order_id=1009 where order_id=9;
update SalesOrder set order_id=1010 where order_id=10;
-- The code to create the Invoices table is as follows:
create table Invoices 
(invoice_id int primary key auto_increment,
 invoice_date datetime,
 order_id int,
 bill_to_name varchar(30),
 invoice_status varchar(30),
 grand_total float,
 billing_address text,
 shipping_address text,
 customer_name varchar(30),
 customer_email varchar(30),
 payment_method varchar(30),
 shipping_method varchar(30),
 subtotal float,
 shipping_amount float,
 foreign key (order_id) references SalesOrder(order_id));
 -- The code to insert the values on the Invoices table is as follows:
 insert into Invoices 
 (invoice_date, order_id, bill_to_name, invoice_status, grand_total,billing_address, shipping_address, customer_name, customer_email,
  payment_method, shipping_method, subtotal, shipping_amount)
  values
('2025-04-01 11:00:00', 1001, 'Alice Johnson', 'Paid', 79.99,'123 Main St, New York, NY', '123 Main St, New York, NY', 'Alice Johnson',
 'alice.johnson@example.com', 'Credit Card', 'Standard Shipping', 69.99, 10.00),
('2025-04-02 15:00:00', 1002, 'Bob Smith', 'Paid', 49.99,'456 Oak Ave, Los Angeles, CA', '456 Oak Ave, Los Angeles, CA', 'Bob Smith',
 'bob.smith@example.com', 'PayPal', 'Express Shipping', 45.99, 4.00),
('2025-04-03 09:30:00', 1003, 'Charlie Brown', 'Unpaid', 109.50,'789 Pine Rd, Chicago, IL', '321 Elm St, Houston, TX', 'Charlie Brown',
 'charlie.brown@example.com', 'Credit Card', 'Standard Shipping', 99.50, 10.00),
('2025-04-04 17:00:00', 1004, 'Diana Prince', 'Paid', 129.99,'321 Elm St, Houston, TX', '321 Elm St, Houston, TX', 'Diana Prince',
 'diana.prince@example.com', 'Credit Card', 'Standard Shipping', 119.99, 10.00),
('2025-04-05 12:10:00', 1005, 'Ethan Hunt', 'Paid', 159.99,'654 Cedar Ln, Phoenix, AZ', '789 Willow Way, San Diego, CA', 'Ethan Hunt',
 'ethan.hunt@example.com', 'Credit Card', 'Express Shipping', 149.99, 10.00),
('2025-04-06 14:00:00', 1006, 'Fiona Gallagher', 'Paid', 39.99,'147 Maple Dr, Philadelphia, PA', '147 Maple Dr, Philadelphia, PA', 'Fiona Gallagher',
 'fiona.gallagher@example.com', 'Debit Card', 'Standard Shipping', 35.99, 4.00),
('2025-04-07 08:45:00', 1007, 'George Martin', 'Paid', 289.99,'258 Birch Blvd, San Antonio, TX', '258 Birch Blvd, San Antonio, TX', 'George Martin',
 'george.martin@example.com', 'Credit Card', 'Standard Shipping', 279.99, 10.00),
('2025-04-08 16:15:00', 1008, 'Hannah Lee', 'Unpaid', 64.99,'369 Willow Way, San Diego, CA', '369 Willow Way, San Diego, CA', 'Hannah Lee',
 'hannah.lee@example.com', 'PayPal', 'Standard Shipping', 59.99, 5.00),
('2025-04-09 18:00:00', 1009, 'Ivan Petrov', 'Paid', 99.99,'753 Aspen Cir, Dallas, TX', '753 Aspen Cir, Dallas, TX', 'Ivan Petrov',
 'ivan.petrov@example.com', 'Credit Card', 'Express Shipping', 89.99, 10.00),
('2025-04-10 13:30:00', 1010, 'Julia Roberts', 'Refunded', 79.50,'951 Poplar St, San Jose, CA', '951 Poplar St, San Jose, CA', 'Julia Roberts',
 'julia.roberts@example.com', 'Credit Card', 'Standard Shipping', 69.50, 10.00);
 -- The code to update the values on the Invoices table is as follows:
update Invoices set invoice_id=10001 where invoice_id=1;
update Invoices set invoice_id=10002 where invoice_id=2;
update Invoices set invoice_id=10003 where invoice_id=3;
update Invoices set invoice_id=10004 where invoice_id=4;
update Invoices set invoice_id=10005 where invoice_id=5;
update Invoices set invoice_id=10006 where invoice_id=6;
update Invoices set invoice_id=10007 where invoice_id=7;
update Invoices set invoice_id=10008 where invoice_id=8;
update Invoices set invoice_id=10009 where invoice_id=9;
update Invoices set invoice_id=10010 where invoice_id=10;
-- The code to view all the values on the Invoices table is as follows:
select * from Invoices;
-- The code to create Shipments table is as follows:
create table Shipments
(shipment_id int primary key,
 ship_date datetime not null,
 order_id int not null,
 order_date datetime not null,
 ship_to_name varchar(30) not null,
 total_quantity int check (total_quantity>=0),
 order_status varchar(30) check (order_status in('Pending','Shipped','Completed','Cancelled')),
 customer_name varchar(30),
 customer_email varchar(30),
 billing_address text,
 shipping_address text,
 payment_method varchar(30),
 shipping_method varchar(30) check(shipping_method in('Standard Shipping','Express Shipping')),
 foreign key (order_id) references SalesOrder (order_id));
 -- The code to insert the values on the Shipments table is as follows:
 insert into Shipments 
 (shipment_id, ship_date, order_id, order_date, ship_to_name, total_quantity, order_status, customer_name, customer_email, billing_address, 
  shipping_address, payment_method, shipping_method) 
  values
(100001,'2025-04-02 09:00:00', 1001, '2025-04-01 10:15:00', 'Alice Johnson', 3, 'Completed', 'Alice Johnson', 'alice.johnson@example.com',
 '123 Main St, New York, NY', '123 Main St, New York, NY','Credit Card', 'Standard Shipping'),
(100002, '2025-04-03 12:30:00', 1002, '2025-04-02 14:30:00', 'Bob Smith', 2, 'Shipped','Bob Smith', 'bob.smith@example.com',
 '456 Oak Ave, Los Angeles, CA', '456 Oak Ave, Los Angeles, CA', 'PayPal', 'Express Shipping'),
(100003, '2025-04-04 11:00:00', 1003, '2025-04-03 09:00:00', 'Lucy Van Pelt', 5, 'Pending', 'Charlie Brown', 'charlie.brown@example.com',
 '789 Pine Rd, Chicago, IL', '321 Elm St, Houston, TX', 'Credit Card', 'Standard Shipping'),
(100004, '2025-04-05 14:00:00', 1004, '2025-04-04 16:20:00', 'Diana Prince', 4, 'Completed', 'Diana Prince', 'diana.prince@example.com',
 '321 Elm St, Houston, TX', '321 Elm St, Houston, TX', 'Credit Card', 'Standard Shipping'),
(100005, '2025-04-06 15:30:00', 1005, '2025-04-05 11:45:00', 'Benji Dunn', 6, 'Shipped','Ethan Hunt', 'ethan.hunt@example.com',
 '654 Cedar Ln, Phoenix, AZ', '789 Willow Way, San Diego, CA','Credit Card', 'Express Shipping'),
(100006, '2025-04-07 10:00:00', 1006, '2025-04-06 13:10:00', 'Fiona Gallagher', 1, 'Completed', 'Fiona Gallagher', 'fiona.gallagher@example.com',
'147 Maple Dr, Philadelphia, PA', '147 Maple Dr, Philadelphia, PA','Debit Card', 'Standard Shipping'),
(100007, '2025-04-08 08:45:00', 1007, '2025-04-07 08:00:00', 'George Martin', 7, 'Completed', 'George Martin', 'george.martin@example.com',
 '258 Birch Blvd, San Antonio, TX', '258 Birch Blvd, San Antonio, TX', 'Credit Card', 'Standard Shipping'),
(100008, '2025-04-09 16:30:00', 1008, '2025-04-08 15:45:00', 'Hannah Lee', 2, 'Pending', 'Hannah Lee', 'hannah.lee@example.com',
 '369 Willow Way, San Diego, CA', '369 Willow Way, San Diego, CA','PayPal', 'Standard Shipping'),
(100009,'2025-04-10 13:20:00', 1009, '2025-04-09 17:25:00', 'Ivan Petrov', 3, 'Completed', 'Ivan Petrov', 'ivan.petrov@example.com',
 '753 Aspen Cir, Dallas, TX', '753 Aspen Cir, Dallas, TX','Credit Card', 'Express Shipping'),
(100010, '2025-04-11 11:10:00', 1010, '2025-04-10 12:50:00', 'Julia Roberts', 2, 'Cancelled', 'Julia Roberts', 'julia.roberts@example.com',
 '951 Poplar St, San Jose, CA', '951 Poplar St, San Jose, CA','Credit Card', 'Standard Shipping');
 -- The code to view all the values on the Shipments table is as follows:
 select * from Shipments;
 -- The code to create the CreditMemos table is as follows:
 create table CreditMemos 
(credit_memo_id int primary key,
 created_date datetime,
 order_id int,
 order_date datetime,
 bill_to_name varchar(30),
 ship_to_name VARCHAR(30),
 status varchar(30) check (status in ('Open', 'Closed', 'Canceled')),
 refunded float check (refunded >= 0),
 order_status varchar(30) check (order_status in ('Pending', 'Shipped', 'Completed', 'Cancelled')),
 billing_address text,
 shipping_address text,
 customer_name varchar(30),
 customer_email varchar(30),
 payment_method varchar(30),
 shipping_method varchar(30) check (shipping_method in ('Standard Shipping', 'Express Shipping')),
 subtotal float,
 shipping_amount float,
 grand_total float check (grand_total >= 0),
 foreign key (order_id) references SalesOrder(order_id));
 -- The code to insert the values on the CreditMemos table is as follows:
 insert into CreditMemos 
 (credit_memo_id, created_date, order_id, order_date, bill_to_name, ship_to_name, status, refunded, order_status, billing_address, 
  shipping_address, customer_name, customer_email, payment_method, shipping_method, subtotal, shipping_amount, grand_total) 
  values
(1000001,'2025-04-12 09:00:00', 1001, '2025-04-01 10:15:00', 'Alice Johnson', 'Alice Johnson', 'Closed', 79.99, 'Cancelled', 
'123 Main St, New York, NY', '123 Main St, New York, NY','Alice Johnson', 'alice.johnson@example.com', 'Credit Card', 'Standard Shipping', 
 69.99, 10.00, 79.99),
(1000002, '2025-04-13 14:30:00', 1002, '2025-04-02 14:30:00', 'Bob Smith', 'Bob Smith', 'Open', 49.99, 'Cancelled', 
'456 Oak Ave, Los Angeles, CA', '456 Oak Ave, Los Angeles, CA','Bob Smith', 'bob.smith@example.com', 'PayPal', 'Express Shipping', 45.99, 4.00, 49.99),
(1000003, '2025-04-14 11:15:00', 1003, '2025-04-03 09:00:00', 'Charlie Brown', 'Lucy Van Pelt', 'Closed', 109.50,'Cancelled', 
 '789 Pine Rd, Chicago, IL', '321 Elm St, Houston, TX','Charlie Brown', 'charlie.brown@example.com', 'Credit Card', 'Standard Shipping', 
  99.50, 10.00, 109.50),
(1000004,'2025-04-15 13:20:00', 1004, '2025-04-04 16:20:00', 'Diana Prince', 'Diana Prince', 'Closed', 129.99,'Cancelled', '321 Elm St, Houston, TX', 
'321 Elm St, Houston, TX','Diana Prince', 'diana.prince@example.com', 'Credit Card', 'Standard Shipping', 119.99, 10.00, 129.99),
(1000005,'2025-04-16 16:00:00', 1005, '2025-04-05 11:45:00', 'Ethan Hunt', 'Benji Dunn', 'Open', 159.99, 'Cancelled', '654 Cedar Ln, Phoenix, AZ', 
'789 Willow Way, San Diego, CA','Ethan Hunt', 'ethan.hunt@example.com', 'Credit Card', 'Express Shipping', 149.99, 10.00, 159.99),
(1000006,'2025-04-17 10:00:00', 1006, '2025-04-06 13:10:00', 'Fiona Gallagher', 'Fiona Gallagher', 'Closed', 39.99, 'Cancelled',
'147 Maple Dr, Philadelphia, PA', '147 Maple Dr, Philadelphia, PA', 'Fiona Gallagher', 'fiona.gallagher@example.com', 'Debit Card', 
 'Standard Shipping', 35.99, 4.00, 39.99),
(1000007, '2025-04-18 12:00:00', 1007, '2025-04-07 08:00:00', 'George Martin', 'George Martin', 'Closed', 289.99, 'Cancelled', 
'258 Birch Blvd, San Antonio, TX', '258 Birch Blvd, San Antonio, TX','George Martin', 'george.martin@example.com', 'Credit Card', 'Standard Shipping',
 279.99, 10.00, 289.99),
(1000008,'2025-04-19 11:45:00', 1008, '2025-04-08 15:45:00', 'Hannah Lee', 'Hannah Lee', 'Open', 64.99,'Cancelled', '369 Willow Way, San Diego, CA', 
'369 Willow Way, San Diego, CA','Hannah Lee', 'hannah.lee@example.com', 'PayPal', 'Standard Shipping', 59.99, 5.00, 64.99),
(1000009,'2025-04-20 15:30:00', 1009, '2025-04-09 17:25:00', 'Ivan Petrov', 'Ivan Petrov', 'Closed', 99.99,'Cancelled', '753 Aspen Cir, Dallas, TX', 
'753 Aspen Cir, Dallas, TX', 'Ivan Petrov', 'ivan.petrov@example.com', 'Credit Card', 'Express Shipping', 89.99, 10.00, 99.99),
(1000010,'2025-04-21 09:30:00', 1010, '2025-04-10 12:50:00', 'Julia Roberts', 'Julia Roberts', 'Closed', 79.50, 'Cancelled', 
'951 Poplar St, San Jose, CA', '951 Poplar St, San Jose, CA','Julia Roberts', 'julia.roberts@example.com', 'Credit Card', 'Standard Shipping', 
 69.50, 10.00, 79.50);
 -- The code to view all the values on the CreditMemos is as follows:
select * from CreditMemos;
-- The code to create the Reviews table is as follows:
create table Reviews
(review_id int primary key,
 created_at datetime,
 status varchar(30) check (status in('Pending','Approved','Rejected')),
 title varchar(100),
 reviewer_name varchar(30),
 review text,
 type varchar(30) check (type in('Product','Service')),
 prod_id int,
 product_name varchar(30),
 sku varchar(30),
 foreign key (prod_id) references Products(prod_id));
 -- The code to insert the values on the Reviews table is as follows:
insert into Reviews 
(review_id, created_at, status, title, reviewer_name, review, type, prod_id, product_name, sku)
values
(2001,'2025-04-01 09:30:00', 'Approved', 'Smooth and reliable', 'Alice Johnson', 'Wireless Mouse works flawlessly and battery lasts long.', 'Product',
 101, 'Wireless Mouse', 'SKU001'),
(2002,'2025-04-02 11:10:00', 'Approved', 'Impressive Sound', 'Bob Smith', 'The Bluetooth Speaker has great bass and clarity.', 'Product', 
 102, 'Bluetooth Speaker', 'SKU002'),
(2003,'2025-04-03 14:00:00', 'Approved', 'Comfortable and durable', 'Clara Lee', 'Running Shoes fit well and are great for jogging.', 'Product', 
 103, 'Running Shoes', 'SKU003'),
(2004, '2025-04-04 10:20:00', 'Pending', 'Basic quality', 'David Kim', 'Notebook pages are thinner than expected.', 'Product', 
 104, 'Notebook', 'SKU004'),
(2005, '2025-04-05 16:45:00', 'Approved', 'Perfect for gamers', 'Ethan Hunt', 'Gaming Keyboard is tactile and lights up beautifully.', 'Product', 
 105, 'Gaming Keyboard', 'SKU005'),
(2006, '2025-04-06 12:10:00', 'Approved', 'Great for daily use', 'Fatima Noor', 'Backpack is spacious, sturdy, and stylish.', 'Product', 
 106, 'Backpack', 'SKU006'),
(2007, '2025-04-07 08:55:00', 'Approved', 'Keeps drinks cold', 'George Martin', 'Water Bottle kept my drink cold for 10+ hours.', 'Product', 
 107, 'Water Bottle', 'SKU007'),
(2008,'2025-04-08 17:30:00', 'Pending', 'Good but pricey', 'Hannah Lee', 'LED Monitor looks great but is a bit expensive.', 'Product', 
 108, 'LED Monitor', 'SKU008'),
(2009, '2025-04-09 13:05:00', 'Rejected', 'Disappointed', 'Ian Wright', 'Office Chair is not very comfortable.', 'Product', 
 109, 'Office Chair', 'SKU009'),
(2010, '2025-04-10 09:15:00', 'Approved', 'Stylish shades', 'Julia Roberts', 'Sunglasses look great and fit well.', 'Product', 
 110, 'Sunglasses', 'SKU010');
 -- The code to view all the values on the Reviews table is as follows:
select * from Reviews;
-- The code to create the NewsletterSubscribers is as follows:
create table NewsletterSubscribers
(id int primary key,
 email varchar(30) unique key,
 customer_first_name varchar(30),
 customer_last_name varchar(30),
 status varchar(30));
 -- The code to insert the values on the NewsletterSubscribers table is as follows:
insert into NewsletterSubscribers 
(id, email, customer_first_name, customer_last_name, status)
values
(20001, 'alice.johnson@example.com', 'Alice', 'Johnson', 'Subscribed'),
(20002, 'bob.smith@example.com', 'Bob', 'Smith', 'Subscribed'),
(20003, 'clara.lee@example.com', 'Clara', 'Lee', 'Pending'),
(20004, 'david.kim@example.com', 'David', 'Kim', 'Unsubscribed'),
(20005, 'ethan.hunt@example.com', 'Ethan', 'Hunt', 'Subscribed'),
(20006, 'fatima.noor@example.com', 'Fatima', 'Noor', 'Pending'),
(20007, 'george.martin@example.com', 'George', 'Martin', 'Subscribed'),
(20008, 'hannah.lee@example.com', 'Hannah', 'Lee', 'Unsubscribed'),
(20009, 'ian.wright@example.com', 'Ian', 'Wright', 'Subscribed'),
(20010, 'julia.roberts@example.com', 'Julia', 'Roberts', 'Subscribed');
-- The code to view all the values on the NewsletterSubscribers is as follows:
select * from NewsletterSubscribers;
-- The code to create the Wishlist table is as follows:
create table Wishlist
(wishlist_id int primary key,
 added_date datetime,
 customer_name varchar(30),
 prod_id int,
 prod_name varchar(30),
 sku varchar(30) unique key,
 comments text,
 foreign key (prod_id) references Products(prod_id));
 -- The code to insert the values on the Wishlist table is as follows:
insert into Wishlist 
(wishlist_id, added_date, customer_name, prod_id, prod_name, sku, comments)
values
(200001, '2025-05-01 09:30:00', 'Alice Johnson', 101, 'Wireless Mouse', 'SKU001', 'Looking for a budget-friendly mouse.'),
(200002, '2025-05-01 10:45:00', 'Bob Smith', 102, 'Bluetooth Speaker', 'SKU002', 'Might buy if the price drops.'),
(200003, '2025-05-02 14:15:00', 'Clara Lee', 103, 'Running Shoes', 'SKU003', 'Perfect for morning runs.'),
(200004, '2025-05-03 11:20:00', 'David Kim', 104, 'Notebook', 'SKU004', 'Need more for school notes.'),
(200005, '2025-05-04 08:10:00', 'Ethan Hunt', 105, 'Gaming Keyboard', 'SKU005', 'Want RGB backlit version.'),
(200006, '2025-05-05 15:35:00', 'Fatima Noor', 106, 'Backpack', 'SKU006', 'Looks durable for travel.'),
(200007, '2025-05-06 13:00:00', 'George Martin', 107, 'Water Bottle', 'SKU007', 'Useful for gym sessions.'),
(200008, '2025-05-07 16:25:00', 'Hannah Lee', 108, 'LED Monitor', 'SKU008', 'Waiting for discount.'),
(200009, '2025-05-08 12:50:00', 'Ian Wright', 109, 'Office Chair', 'SKU009', 'Considering for home office.'),
(200010, '2025-05-08 17:10:00', 'Julia Roberts', 110, 'Sunglasses', 'SKU010', 'Nice style, will buy for summer.');
-- The code to view all the values on the Wishlist table is as follows:
select * from Wishlist;

--     JOINS
-- List all the products that have been reviewed
select A.prod_name, B.title, B.review 
from Products as A 
inner join reviews as B on A.prod_sku=B.sku;
-- Get Customers name and their associated salesorders
select A.cust_full_name, B.order_id, B.grand_total
from Customers as A 
inner join SalesOrder as B on A.cust_email=B.customer_email;
-- Find Shipments with their corresponding sales order status
select A.shipment_id, B.order_id, B.order_status
from Shipments as A 
inner join SalesOrder as B on A.order_id = B.order_id;
-- List all invoices and associated customer's full name
select A.invoice_id, B.cust_first_name, B.cust_last_name, B.cust_full_name, A.grand_total 
from Invoices as A
inner join Customers as B on A.customer_email=B.cust_email;
-- Get Wishlist items along with matching product details
select A.customer_name, A.prod_name, B.prod_sku, B.prod_price 
from Wishlist as A 
inner join Products as B on A.sku = B.prod_sku;
-- List all customers and any orders that may have placed
select A.cust_full_name, B.order_id, B.grand_total
from Customers as A 
left join SalesOrder as B on A.cust_email=B.customer_email;
-- Get all products and their reviews if available
select A.prod_name, B.review
from Products as A 
left join Reviews as B on A.prod_sku=B.sku;
-- Show all newsletter subscribers and their sales orders(if any)
select A.email, B.order_id
from NewsletterSubscribers as A 
left join SalesOrder as B on A.email=B.customer_email;
-- List all orders with their associated credit memos(if any)
select A.order_id, B.credit_memo_id
from SalesOrder as A 
left join CreditMemos as B on A.order_id=B.order_id;
-- Display all products and wishlist info (even if not wishlisted)
select A.prod_name,B.customer_name 
from Products as A 
left join Wishlist as B on A.prod_sku = B.sku;
-- Get all reviewed products and product details
select A.prod_name, B.title
from Products as A
right join Reviews as B on A.prod_sku=B.sku;
-- List all invoices and customer data (even if some customer don't exist)
select A.invoice_id, B.cust_full_name 
from Customers as B
right join Invoices as A on B.cust_email=A.customer_email;
-- List all customers and orders(including unmatched in both tables)
select A.cust_full_name, B.order_id
from Customers as A
left join SalesOrder as B on A.cust_email = B.customer_email
union
select A.cust_full_name, B.order_id
from Customers as A
right join SalesOrder as B on A.cust_email = B.customer_email;
-- Find customers living in the same city
select A.cust_full_name, B.cust_full_name, A.cust_city 
from Customers as A
join Customers as B on A.cust_id = B.cust_id;
-- List order details along with invoices and shipment info
select A.order_id, B.invoice_id, C.shipment_id
from SalesOrder as A
join Invoices as B on A.order_id=B.order_id
join Shipments as C on A.order_id=C.order_id;
-- Find product reviews with customer emails who added them to wishlist
select A.product_name, B.customer_name, A.review 
from Reviews as A
join Wishlist as B on A.sku=B.sku;
-- List customer orders and associated credit memos
select A.cust_full_name, B.order_id, C.credit_memo_id
from Customers as A
join SalesOrder as B on A.cust_email=B.customer_email
join CreditMemos as C on B.order_id=C.order_id;
-- Find products and their categories
select A.prod_name, B.category_name
from Products as A
join Categories as B on A.prod_id=B.category_id;
-- Match Newsletter Subscribers with actual customers
select A.email, B.cust_full_name
from NewsletterSubscribers as A
join Customers as B on A.email = B.cust_email;
-- Find customers who haven't subscribed to the newsletter
select A.cust_full_name, B.email
from Customers as A
left join NewsletterSubscribers as B on A.cust_email = B.email
where B.email is null;
-- The code to create view for Customer Sales Summary
create view CustomerSalesSummary as
select 
customer_email, 
customer_name,
count(order_id) as total_orders,
sum(grand_total) as total_sales
from SalesOrder
group by customer_email,customer_name;
-- The code to view the Customer Sales Summary
select * from CustomerSalesSummary;

--   STORED PROCEDURES
-- Create a stored procedure that retrieves a customer's total number of orders and total amount spent,based on their email
delimiter //
create procedure GetCustomerOrderSummary(IN customer_email varchar(50))
begin
select
customer_email, 
count(order_id) as total_orders, 
sum(grand_total) as total_spent 
from SalesOrder
group by customer_email;
end //
delimiter ; 
-- The code to use the created stored procedure for getting the Customer Order Summary
call GetCustomerOrderSummary('alice.johnson@example.com');
--  Write a procedure to insert a new product into the Products table
delimiter //
create procedure InsertProduct(
IN prod_id int,
IN prod_name varchar(30),
IN prod_type varchar(30),
IN prod_sku varchar(30),
IN prod_price float,
IN prod_qty int,
IN prod_status varchar(30))
begin
insert into Products (prod_id, prod_name, prod_type, prod_sku, prod_price, prod_qty, prod_status)
values
(prod_id, prod_name, prod_type, prod_sku, prod_price, prod_qty, prod_status);
end //
delimiter ;
-- The code to use the created stored procedure for inserting the new product
call InsertProduct(111,'Fitness Band','Electronics','SKU011', 59.99, 50, 'Available');
-- Create a procedure to get all orders made between two purchase dates
delimiter //
create procedure GetOrdersBetweenDates(
IN start_date datetime,
IN end_date datetime)
begin
select * from SalesOrder
where purchase_date between start_date and end_date
order by purchase_date;
end //
delimiter ; 
-- The code to use the created stored procedure for getting the orders between two dates
call GetOrdersBetweenDates('2025-04-02 00:00:00','2025-04-06 23:59:59');
-- Write a procedure to update the quantity of a product based on SKU
delimiter //
create procedure UpdateProductQuantity(
IN p_sku varchar(30),
IN new_qty int)
begin
update Products set prod_qty = new_qty
where prod_sku=p_sku;
end //
delimiter ;
-- The code to use the created stored procedure for updating the quantity of the Product
call UpdateProductQuantity('SKU006',120);
-- Create a stored procedure that returns all reviews for a given product SKU
delimiter //
create procedure GetReviewsBySKU(IN input_sku varchar(30))
begin
select review_id,created_at,status, title, reviewer_name, review, type, prod_id, product_name, sku
from Reviews
where sku = input_sku;
end //
delimiter ;
-- The code to use the created stored procedure for getting the reviews by SKU
call GetReviewsBySKU('SKU002');

-- TRIGGERS
-- Create a trigger that automatically inserts a customer's email and name into the Newsletter Subscribers table when a new customer is added
delimiter //
create trigger trg_add_to_newsletter
after insert on Customers
for each row
begin
insert into NewsletterSubscribers (id, email, customer_first_name, customer_last_name, status)
values
(id, email, first_name, last_name, 'Subscribed');
end //
delimiter ;
-- Write a trigger that decreases the product quantity in Products when a new order is placed in Sales Order table
delimiter //
create trigger trg_decrease_product_qty
after insert on SalesOrder
for each row
begin
update Products set prod_qty = qty-quantity
where id = prod_id;
end //
delimiter ;
-- Write a trigger that automatically sets the status of a new review to 'Pending' before it's inserted into the Reviews table
delimiter //
create trigger trg_set_review_status
before insert on Reviews
for each row
begin
set new.status = 'Pending';
end //
delimiter ;
-- Write a trigger that updates the related invoice’s status to 'Refunded' when a Sales_Orders record is updated to 'Refunded'
delimiter //
create trigger trg_update_invoice_on_refund
after update on SalesOrder
for each row
begin 
if status = 'Refunded' then
update Invoices set status ='Refunded'
where order_id = order_id;
end if;
end //
delimiter ;
-- Create a trigger that automatically sets the status of a product to 'Out of Stock' when its quantity becomes 0 after an update
delimiter //
create trigger trg_mark_unavailable
after update on Products
for each row
begin
if qty=0 then 
update Products set prod_status='Unavailable'
where id = prod_id;
end if;
end //
delimiter ;




