--Question 1
select TotalAmount,Status,DueDate,PaymentMethod,PaymentAmount
from bills
inner join payments
on bills.BillID=payments.BillID;

--Question 2
select customerName,email,customerAddress,TotalAmount,Status
from customer
left join bills
on customer.customerID=bills.customerID;

--Question 3
select BillDate,DueDate,Status,ItemDescription,Quantity,LineTotal
from bills
right join
bill_items using(BillID);

--Question 4
create table users(
user_id int primary key auto_increment,
username varchar(50));
create table user_profiles(
profile_id int primary key,
user_id int unique,
profile_data varchar(255),
foreign key(user_id) references users(user_id));

--Question 5
create table departments(
department_id int primary key auto_increment,
department_name varchar(50));
create table employees(
employee_id int primary key ,
employee_name varchar(20),
foreign key(department_id) references departments(department_id));

--Question 6
select 
categoryName,
TotalAmount,
DueDate,
customerName,
CustomerAddress
from 
categories
inner join
bills using(categoryID)
left join
customer using(customerID);
