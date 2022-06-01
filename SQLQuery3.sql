create table hospital
(
	hno int,
	name varchar(20),
	constraint pk_hospital primary key(hno)
	personage int,
	
) 
alter table hospital add personage varchar(50) not null
alter table hospital add country varchar(50) default 'india'
alter table hospital add  constraint chk_personage check(personage>=18)

alter table hospital drop constraint pk_hospital
alter table hospital add  constraint pk_hospital primary key(hno)
alter table hospital add  constraint default_con default 'india' for country 

create index index_hospital on hospital(hno)

create unique index index_hospital1 on hospital(hno)