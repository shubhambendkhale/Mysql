#UC1
#create Addesssbook database

create database address_book_system;
show databases;
use address_book_system;

#UC2
#Ability to create a Address Book Table with first and last names, address, city,state, zip, phone number and email as its attributes.

create table address_book(
	firstName varchar(30)  not null ,
    lastName varchar(30)  not null ,
    address varchar(50)  not null,
    city varchar(20)  not null,
	state varchar(20)  not null,
	zip  varchar(10) not null,
	phoneNo varchar(20) not null,
    email varchar(30) not null,
	primary key(firstName)
);

#UC3
#Ability to insert new Contacts to Address Book

insert  into address_book(firstName,lastname,address,city,state,zip,phoneNo,email) values
 ('sanket','abc','Nagar Road','Anagar','Maharastra','414306','343929393','abc@gmail.com');
 
 select * from address_book;
 
 #uc4
#Ability to edit existing contact person using their name

UPDATE address_book 
SET 
    phoneNo = '8999384461'
WHERE
    firstName = 'sanket';
#update last name 
UPDATE address_book 
SET 
    lastName = 'lalge'
WHERE
    firstName = 'sanket';

#UC5
#Ability to delete person using FirstName

DELETE FROM `address_book` 
WHERE
    `firstName` = 'sanket';
 
 #UC6
#Ability to Retrieve Person belonging to a City or State from the Address Book

SELECT 
    *
FROM
    address_book
WHERE
    city = 'Anagar';
SELECT 
    *
FROM
    address_book
WHERE
    state = 'maharastra';

#uc7
#Ability to understand the size of address book by City and State
#size of address book by city
SELECT 
    COUNT(city) AS NumberOfaddress_book
FROM
    address_book;

#size of address book by city
SELECT 
    COUNT(state) AS NumberOfaddress_book
FROM
    address_book;
  

#uc8
#Ability to retrieve entries sorted alphabetically by Person’s name for a given city  
SELECT 
    *
FROM
    address_book
ORDER BY firstName;

#uc9
#Ability to identify each Address Book with name andType.
alter table address_book add type varchar(30) after lastName;
update  address_book set type='employee' where firstName ='sanket';

#UC10
# COUNT(city) AS NumberOfaddress_book FROM address_book;
select count(type) AS NumberOfaddress_book FROM address_book;
    