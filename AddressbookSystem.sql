create database address_book;
show databases;
use address_book;

CREATE TABLE addressbook_attributes(
    addressbook_id int auto_increment,
    addressbook_name varchar(40),
    type varchar(30),
    primary key( addressbook_id)
);

insert  into addressbook_attributes(Addressbook_name,type) values
 ('addressbook1','family'),
 ('addressbook2','profession'),
 ('addressbook3','friend');
 
 CREATE TABLE person(
contact_id int primary key auto_increment,
first_name varchar(30),
last_name varchar(30),
addressbook_id int,
email varchar(30),
phoneno long,
foreign key (addressbook_id)  references addressbook_attributes(addressbook_id)
);

insert  into person(first_name,last_name,email,phoneno,addressbook_id) values
 ('sanket','lalge','san@gmail.com',1232421342,1),
 ('abc','cba','bca@gmail.com',5648342423,2),
 ('xyz','zyx','yzx@gmail.com',9234342423,1);
 
CREATE TABLE address(
aid int primary key ,
address varchar(60),
city varchar(30),
state varchar(30),
zip int
);

insert  into address(aid ,address,city,state,zip) values
 (11,'sp road','pune','mh',411030),
 ('12','nagar road','nagar','mh',411020),
 ('13','abc chowk','thane','mh',553633);
 
 CREATE TABLE person_addressbook(
contact_id int ,
aid int,
foreign key (contact_id)  references person(contact_id),
foreign key (aid)  references address(aid)
);