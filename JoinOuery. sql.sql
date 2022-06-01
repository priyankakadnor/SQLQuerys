create table orderjoin
(
	orderid int primary key not null,
	orderno int
	)
	alter table orderjoin add ProductPrice int
	alter table orderjoin add foreign key (personid) references person (personid)
	select * from orderjoin
	select * from person
	select * from Product
	alter table Product add personid int
	alter table Product add foreign key (personid) references person (personid)
	--1,5,9
	insert into Product values (1,'keyboard',2000,101)
	insert into orderjoin values (2,102,1,'mouse',600)
	insert into orderjoin values (3,103,1,'headphone',700)
	insert into orderjoin values (4,104,5,'CPU',2000)
	insert into orderjoin values (5,105,5,'Mobile',10000)
	insert into orderjoin values (6,106,9,'Router',3400)
	insert into orderjoin values (7,107,9,'Mobile',20000)
	insert into orderjoin values (8,108,9,'Laptop',25000)

	--inner join 
	select p.name,p.country,o.orderno,o.ProductName
	from person p
	inner join orderjoin o on o.personid=p.personid

	--left join
	select p.name,p.country,o.orderno,o.ProductName
	from person p left join orderjoin o on o.personid=p.personid

	
	--right join
	select p.name,p.country,o.orderno,o.ProductName
	from person p 
	right join orderjoin o on o.personid=p.personid
	where p.personid=5

	--full join
		select p.name,p.country,o.orderno,o.ProductName
	from person p 
	full join orderjoin o on o.personid=p.personid

	select * from Employee

	alter table Employee drop column department

	alter table Employee add managerid int
	alter table Employee add did int
	update Employee set managerid=1  where eid in(2,3,4,5)
	update Employee set managerid=6 where eid in(7,8,9,10)
	update Employee set managerid=10 where eid in(12)

	select e1.firstname as firsttname ,e2.firstname as managerid
	from Employee e1, Employee e2
	where e1.managerid =e2.eid

	create table studyinfo
	(
		studentid varchar(30),
		courseid varchar(20) ,
		year int)
		select *  from studyinfo
		 insert into studyinfo values('s3','c3',2017)

		 --find the student id ,year enrolle for differtn course for differnt year
		 select s1.studentid ,s1.courseid,s1.year
		 from studyinfo s1, studyinfo s2
		 where s1.studentid=s2.studentid and s1.courseid<>s2.courseid

		 create table drinks
		 (
			name varchar(30)
			)
			insert into drinks values('Lomon tea')
			
			--union all
			create table depart
		 (
			did int primary key,
			dname varchar(30)
			)
			insert into depart values(1,'hr')
			insert into depart values(2,'Teacher')
			insert into depart values(3,'Principle')
			insert into depart values(4,'Hr')
			insert into depart values(5,'Sale')
			insert into depart values(6,'Principle')
			insert into depart values(7,'Hr')
			insert into depart values(8,'Sale')
			insert into depart values(9,'Principle')
			insert into depart values(10,'Hr')
			alter table Employee add foreign key (did) references depart (did)
			update Employee set did=1  where eid in(2,3,4,5)
			update Employee set did=6 where eid in(7,8,9,10)
			select * from Employee

			--display employess who work in their dept using inner join
		select e.eid,e.firstname,e.lastname,e.salary,d.did,d.dname
		from Employee e inner join depart d on e.eid=d.did 
		

		--display emp and dept name who work in hr dept
		select e.eid,e.firstname ,e.lastname,d.did,d.dname
		from Employee  e inner join depart d on e.did=d.did
		where d.dname='hr'

		--display emp in hr dept ,desending order of their salary
			select e.eid,e.firstname ,e.lastname,e.salary,d.did,d.dname
		from Employee  e inner join depart d on e.did=d.did
		where d.dname='hr' order by(salary) desc
		
		--display emp from sales dept in ascending order of name
		select e.eid,e.firstname ,e.lastname,e.salary,d.did,d.dname
		from Employee  e inner join depart d on d.did=e.did
		where d.dname='sale' order by firstname
		 
		--display emp and dept asending order of name and salary
		 	select e.eid,e.firstname ,e.lastname,e.salary,d.did,d.dname
		from Employee  e inner join depart d on d.did=e.did
		 order by firstname

		 --union and union all

		 create table school
		 (
		 id int primary key,
		 city varchar(30),
		 country varchar(20)
		 )

		 create table supplier
		 (
		 sid int primary key,
		 city varchar(30),
		 country varchar(20)
		 )

		 insert into school values(1,'pune','india')
		  insert into school values(2,'mumbai','USA')

		  select city,country  from Customer where city='pune'
		  union 
		    select city,country  from supplier where city='pune';

			--having clause

			--display emp count in hr and sales dept using having clause
			select * from depart
			select dname,count(did)as departcount from depart
			group by dname
			having dname in('hr', 'sale')
			order by COUNT(did)