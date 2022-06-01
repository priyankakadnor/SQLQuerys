create table orders
(
	orderid int,
	orderno int,
	hno int,
	constraint pk_orders primary key(orderid),
	constraint pk_orders_hospital foreign key(hno) references hospital(hno),
	)

	alter table orders add constraint pk_orders_hospital
	foreign key (hno) references hospital(hno)