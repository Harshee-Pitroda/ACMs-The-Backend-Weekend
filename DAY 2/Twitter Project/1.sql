create database tweet;
use tweet;
CREATE TABLE users (
    user_id INT NOT NULL PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    username varchar(20) unique not null
);
insert into users(user_id,email,password, username) values(2,"jack@jacksemail.com","jack's password", "jack");
insert into users(user_id,email,password, username) values(89,"seconduser@second.com","abcd", "coolrick35");
insert into users(user_id,email,password, username) values(36,"myemail@myemail.com","mypassword", "coolguy34");
select *from users;