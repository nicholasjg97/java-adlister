use adlister_db;

insert into users (username, email, password) values
('ngaytan', 'ngaytan97@gmail.com', 'letmein');

insert into ads (user_id, title, description) values
(1, 'Test Ad', 'Desciption of test ad'),
(2, 'Test Ad', 'Desciption of test ad'),
(3, 'Test Ad', 'Desciption of test ad')
