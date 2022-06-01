create table Employee
(
	eid int  primary key not null,
	firstname varchar(50),
	lastname varchar(30),
	salary int,
	city varchar(40),
	department varchar(30)
	)

	create table Department
	(
		did int  primary key not null,
		dname varchar(30)
		)
	insert into Employee values(10,'Ram','kumar',2200,'Pune','sale')
	select * from Employee

	select * from Employee where department='sale'
	select * from Employee where salary<35000

select * from Employee where city in('pune','mumbai')
select * from Employee where salary between 25000 and 35000

select * from Employee where firstname like 'T%'  --name start with 
select * from Employee where firstname like '%A' --name end with

	--select distinct department from Employee
	 alter table Employee add  department varchar(30)

	--Aggregation  function
	select COUNT(distinct city) from Employee 
	select count(*)from Employee 
	select sum(salary) as sumsalary from Employee
	select avg(salary) as avgsalary from Employee
	select min(salary) as minsalary from Employee
	select max(salary) as maxsalary from Employee
	--display

	select e.eid,e.firstname,e.salary
	from Employee e

	--inner join 

	--having sql quuery

	
	update  Employee set department='Hr'  where  eid=6;

	select department,count(eid) as employeecount from Employee
	group by department
	having department in('Hr','sale')

	--SQL build im function

	update Employee set salary=3459.89 where eid=1
	select * from Employee;
	select SUBSTRING(firstname,0,3) as lastname from Employee where eid=7;
	select CONCAT(firstname,' ',city) as info from Employee;
	select firstname,LEN(firstname) as  length from Employee
	select UPPER(firstname) as name from Employee
	select Lower(firstname) as name from Employee
	select ROUND(salary,2)as salary from Employee
	select ROUND(434.690,0)as roundvalue
	select CAST(salary as varchar(20)) from Employee
	select REVERSE(firstname) as reversname from Employee