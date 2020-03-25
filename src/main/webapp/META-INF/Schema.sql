Drop table if exists order_product,orderContent,product,client;
create table client (id serial primary key,login varchar(50),password varchar(50));
create table product (id serial primary key,title varchar(50),price integer);
create table orderContent (id serial primary key,price integer,client_id integer references client(id));
create table order_product (id serial primary key,order_id integer references orderContent(id),product_id integer references product(id));
insert into client (login,password) values ('admin','admin'),('user','user'),('test','test');
insert into product (title,price) values ('product A',100),('product B',200),('product C',150),('product D',170),('product E',300);
insert into orderContent (price,client_id) values (300,1),(170,2),(470,3);
insert into order_product (order_id,product_id) values (1,1),(1,2),(2,4),(3,5),(3,4);
