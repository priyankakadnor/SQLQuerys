
create table customer 
(
	cid int primary key not null,
	cname varchar(30),
	city varchar(30),
	postalcode int,
	country varchar(40)
	)

	create  table productinfo
	(

	insert into customer values(1,'rohan','London',236541,'Norway')
	insert into customer values(2,'mohan','Berlin',2365781,'France')
	insert into customer values(3,'rohan','	Hyderabad',236541,'Norway')
	insert into customer values(4,'mohan','Mumbai',2365781,'india')
	
	insert into customer values(5,'pooja','London',236541,'USA')
	insert into customer values(23,'suraj','Dehli',121110,'Pakistan')
	insert into customer values(7,'raj','Dubai',236541,'Austorila')
	insert into customer values(8,'swami','Berlin',121110,'india')

	insert into customer values(9,'sameer','Hydrabad',124563,'Norway')
	insert into customer values(14,'Ashwini','Oslo',895647,'Norway')

	select * from customer;

	create table productinfo
	(
		pid int primary key not null,
		price int,
		pname varchar(30)
		)

		select * from productinfo;
		select * from Product
		alter table ordres add productname varchar(30)
insert into productinfo values(10,20,'pen');

--1.Write a statement that will select the City column from the Customers table
	select  city from customer;

--2.Select all the different values from the Country column in the Customers table.

	select distinct country from customer;


--3.Select all records where the City column has the value "London
	select * from customer where city='London';

--4.Use the NOT keyword to select all records where City is NOT "Berlin".
	select * from customer where not city='Berlin' ;

--5.Select all records where the CustomerID column has the value 23.
	select * from customer where cid=23;

--6.Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
	select * from customer where city='Berlin' AND postalcode=121110 ;

--7.Select all records where the City column has the value 'Berlin' or 'London'.
	select * from customer where city not in('Berlin','London') ;

--8.Select all records from the Customers table, sort the result alphabetically by the column City.
select * from customer 
order by city;

--9.Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customer 
order by city desc;

--10.Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from customer 
order by country,city;

--11.Select all records from the Customers where the PostalCode column is empty.
select * from customer where postalcode is null

--12.Select all records from the Customers where the PostalCode column is NOT empty.
select * from customer where postalcode is not  null

--13.Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway"
update customer set city='Oslo' where country='Norway';

--14.Delete all the records from the Customers table where the Country value is 'Norway'.
delete  customer where country='Norway';

--20.Select all records where the value of the City column starts with the letter "a".

select * from customer where city like 'a%'; 

--21.Select all records where the value of the City column ends with the letter "a".
select * from customer where city like '%a'; 

--22.Select all records where the value of the City column contains the letter "a".
select * from customer where city like '%a%'; 

--23.Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from customer where city like 'a%b'; 

--24.Select all records where the value of the City column does NOT start with the letter "a".
select * from customer where city not like 'a%'; 

--25.Select all records where the second letter of the City is an "a".
select * from customer where city like '_a%';

--26.Select all records where the first letter of the City is an "a" or a "c" or an "s".

select * from customer where city  like'[acs]%';

--27.Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from customer where city  like'[a-f]%';

--28.Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from customer where city not like'[acs]%';

--29.Use the IN operator to select all the records where the Country is either "Norway" or "France".
 select * from customer where country in('Norway','France');

 --30.Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
  select * from customer where country not  in('Norway','France');

 --31. Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from productinfo where price between 10 and 20

--32.Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from productinfo where price  not between 10 and 20

--33.Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Pen' and 'Book'
select * from productinfo where pname between 'pen' And 'Book';

--36.List the number of customers in each country.
SELECT COUNT(cid),country
FROM Customer
GROUP BY country

--37.List the number of customers in each country, ordered by the country with the most customers first.

SELECT COUNT(cid),country
FROM Customer
GROUP BY Country

ORDER BY 
COUNT(cid) DESC
;
--38.Write the correct SQL statement to create a new database called testDB.
create database testDB;

--39.Write the correct SQL statement to delete a database named testDB
drop database testDB;

--40.Add a column of type DATE called Birthday in Persons table
alter table person add  Birthday Date

--41.Delete the column Birthday from the Persons table
alter table person drop column Birthday 

--SQL ASSIGNMENT
--1.--Write a query to display emp_name as ‘Name’ in upper case
 select UPPER(firstname) from Employee

 ----Write a query to get max and min salary of employee

 select min(salary) as minsalary from Employee
 select max(salary) as minsalary from Employee

 --Write a query to get all employee details from employee table display in descending order
 select * from Employee order by firstname desc
 
 --Write a query to get total salaries payable to all employees from employee table
 select sum(salary) from Employee 

 --Write a query to get unique department ID from employee table
 
	select distinct did from Employee;

----Write a query to get first 10 records from the employee table
	select  Top 10 from Employee