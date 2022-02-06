create table customer ( id int(4) not null primary key unique auto_increment, name varchar(50), contactname varchar(50), country varchar(20));
desc customer;
insert into customer (name, contactname, country) values ("Alfreds Futterkiste", "Maria Anders", "Germany"), 
("Ana Trujillo Emparedados y helados", "Ana Trujillo", "Mexico"),("Antonio Moreno Taquería", "Antonio Morenos", "Mexico");
select * from customer;

create table orders (order_id int(4) not null primary key unique auto_increment, cust_id int(4), orderdate date); 
desc orders;
insert into orders (cust_id, orderdate) values (2,'1996-09-18'),(37,'1996-09-19'),(77,'1996-09-20');
select * from orders;

select customer.name, customer.country, orders.orderdate from customer inner join orders on customer.id=orders.cust_id;
select customer.name, customer.country, orders.orderdate from customer left outer join orders on customer.id=orders.cust_id;
select customer.name, customer.country, orders.orderdate from customer right outer join orders on customer.id=orders.cust_id;