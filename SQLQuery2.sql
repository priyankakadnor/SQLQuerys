create table course
(
	id int primary key,
	name varchar(20) not null
	
	)
		alter table course add city varchar(20)
			alter table course drop column city

			sp_rename 'course.name','coursename'
			insert into course values(4,'C#');
		select * from course;

		create table person(
	 personid int  primary key not null,
	 name varchar(50),
	 age int,
	 country varchar(50)
	 )
insert into person values(10,'swami',25,'india');
	select * from person;

	update person set age=34 where personid=2 
	delete person where personid=2

	select distinct age from person
	select name ,age ,country from person where personid=3

	select * from person where personid<>3
	select * from person where personid<3
	select * from person where personid<=3
	select * from person where personid>=3
	select * from person where personid=3
	select * from person where personid>3

	--to display data betn the range between and operator
	select * from person where age between 23 and 27

	-- in operator  select the multiple possible values
	select * from person where personid  in(1,2,3,4)
	select * from person where personid  not in(1,3,4)
	select * from person where country in('india')

	--And , OR opertor

	--null value in SQL
	--is null
	--is not null
	select * from person where country is null
	select * from person where country is not null
