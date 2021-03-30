create database library;
-- uncomment line 1 if running script for first time

use library;

create table roles (
role_id int auto_increment not null primary key,
role varchar(50) not null
);

create table person (
person_id int auto_increment not null primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
age int,
role_id int not null,
foreign key (role_id) references roles (role_id)
);

create table genres (
genre_id int auto_increment not null primary key,
genre varchar(50) not null
);

create table books (
book_id int auto_increment not null primary key,
title varchar(100) not null,
author_id int not null,
isbn char(16),
genre_id int,
shelf_reference char(6) not null,
foreign key (author_id) references person (person_id),
foreign key (genre_id) references genres (genre_id)
);

-- create table readers (
-- reader_id int auto_increment not null primary key,
-- first_name varchar(50) not null,
-- last_name varchar(50) not null,
-- age int not null
-- );

-- create table employees (
-- employee_id int auto_increment not null primary key,
-- first_name varchar(50) not null,
-- last_name varchar(50) not null
-- );

create table checkouts(
checkout_id int auto_increment not null primary key,
book_id int not null,
date_out date not null,
date_due date not null,
reader_id int not null,
date_return date not null
);

alter table checkouts 
add foreign key (book_id) references books (book_id),
add foreign key (reader_id) references person (person_id); 

-- alter table books
-- alter column isbn char(16);