PRAGMA foreign_keys = ON;

--Customers table

CREATE TABLE Customers 
(
    id        integer primary key,
    title     varchar,
    firstname varchar,
    surname   varchar,
    email     varchar
);

insert into Customers (title, firstname, surname, email) values ('Mr', 'Donald', 'Trump', 'Donaldo@gmail.com');
insert into Customers (title, firstname, surname, email) values ('Mr', 'Pat', 'leChat', 'chaton@gmail.com');
insert into Customers(title, firstname, surname, email) values ('Ms', 'Eyenga', 'Obama', 'obama@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Gaston', 'Mollo', 'gaston@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Malono', 'Mollo', 'malone@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Eben', 'Will', 'mokobe9@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Raoul', 'Samson', 'kollo@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Wasekwa', 'Mondor', 'fadiga@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Henry', 'Grerinac', 'conan@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Barry', 'Luke', 'santos@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Alex', 'Edouard', 'edouard@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Fulbert', 'Sango', 'sango@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Gontrand', 'Mollo', 'gontrand@gmail.com');
insert into Customers(title, firstname, surname, email) values('Mr', 'Fefe', 'Manganda', 'mangada@gmail.com');

-- Reservations table

CREATE TABLE reservations 
(
    reservation_id       integer primary key,
    customer_id          integer,
    check_in_date        datetime not null,
    check_out_date       datetime,
    price                number,
    foreign key (customer_id) references Customers(id)
    
);

insert into reservations (check_in_date, price, customer_id) values ('18/03/2018', 30, 3);
insert into reservations (check_in_date, price, customer_id) values ('19/03/2018', 338, 5);
insert into reservations (check_in_date, price, customer_id) values ('19/03/2018', 405, 7);
insert into reservations (check_in_date, price, customer_id) values ('19/03/2018', 480, 9);
insert into reservations (check_in_date, price, customer_id) values ('19/03/2018', 125, 2);
insert into reservations (check_in_date, price, customer_id) values ('19/03/2018', 130.89, 3);
insert into reservations (check_in_date, price, customer_id) values ('19/03/2018', 536, 7);
insert into reservations (check_in_date, price, customer_id) values ('19/03/2018', 1200.05, 8);
insert into reservations (check_in_date, price, customer_id) values ('19/03/2018', 405, 9);
insert into reservations(check_in_date, price, customer_id) values ('15/03/2018', 167.99, 10);
insert into reservations(check_in_date, price, customer_id) values ('24/03/2018', 237, 10);


--Invoices table

CREATE TABLE Invoices (
    id                        integer primary key,  
    reservation_id            integer,     
    total                     number,
    invoice_date_time         datetime not null,
    paid                      boolean default false,
    foreign key (reservation_id) references reservations(reservation_id)

);

insert into Invoices ( reservation_id, total, invoice_date_time, paid) values (2, 450, '22/08/2014', 1); 
insert into Invoices ( reservation_id, total, invoice_date_time) values (2, 70, '12/08/2017');
insert into Invoices (reservation_id, total, invoice_date_time) values (4, 55, '22/04/2012'); 
insert into Invoices (reservation_id,  total, invoice_date_time) values (4, 40.34, '15/08/2016'); 
insert into invoices ( reservation_id, total, invoice_date_time, paid) values (3, 143.50, '01/01/2017', 1);
insert into invoices ( reservation_id, total, invoice_date_time) values (3, 250.50, '02/01/2017');
insert into invoices ( reservation_id, total, invoice_date_time) values (1, 431.50, '03/01/2017');
insert into invoices ( reservation_id, total, invoice_date_time, paid) values (2, 300.50, '04/01/2017', 1);
insert into invoices (reservation_id, total, invoice_date_time, paid) values (1, 284.35, '04/01/2017', 1);
insert into invoices (reservation_id, total, invoice_date_time, paid) values (6, 478.99, '04/03/2017', 1);


-- Room_types table

create table rooms_types(
    id               integer primary key,
    type_name        varchar,
    original_price   number,
    current_price    number   
);
 
insert into rooms_types (type_name, original_price, current_price) values ('classic room', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price)  values ('SUPERIOR CITY-VIEW ROOM', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('SUPERIOR ROOM', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('PRESTIGE ROOM', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('classic room', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('LUXOR ROOM', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('LUXOR ROOM', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('SUPERIOR CITY VIEW ROOM', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('LUXOR ROOM', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('PRESTIGE ROOM', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('LUXOR ROOM', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('classic room', 60, 59.99);
insert into rooms_types (type_name, original_price, current_price) values ('PRESTIGE ROOM', 60, 59.99);


--Rooms table

CREATE TABLE rooms(
    id          integer primary key,
    rooms_types_id    integer,
    sea_view          boolean default false,
    foreign key (rooms_types_id) references rooms_types(id)
);

insert into rooms (rooms_types_id, sea_view) values (3, 1);
insert into rooms (rooms_types_id, sea_view) values (5, 1);
insert into rooms (rooms_types_id) values (2);
insert into rooms (rooms_types_id, sea_view) values (1, 1);
insert into rooms (rooms_types_id, sea_view) values (6, 1);
insert into rooms (rooms_types_id) values (8);
insert into rooms (rooms_types_id, sea_view) values (4, 1);
insert into rooms (rooms_types_id) values (7);
insert into rooms (rooms_types_id, sea_view) values (9, 1);
insert into rooms (rooms_types_id, sea_view) values (10, 1);
insert into rooms (rooms_types_id) values (7);