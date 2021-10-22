DROP DATABASE IF EXISTS adlister_db;

CREATE DATABASE adlister_db;

use adlister_db;

CREATE TABLE users (
    id int unsigned not null auto_increment,
    username varchar(100) not null,
    email varchar(100) not null,
    password varchar(100) not null,
    primary key (id)
);

CREATE TABLE ads (
    id int unsigned not null auto_increment,
    user_id int unsigned not null,
    title varchar(100) not null,
    description text not null,
    foreign key (user_id) references users(id),
    primary key (id)
);

show databases;