
create procedure SP_Insert_depart(@did int, @dname varchar(20))
as begin
insert into depart values(@did,@dname)
return
end

select *from depart

create procedure SP_Update_depart(@did int, @dname varchar(20))
as begin
update depart set dname=@dname where did=@did
return
end

create procedure SP_SelectAll_depart
as begin
select * from depart
return
end

exec SP_Insert_depart
@did=11,
@dname='HR'

exec SP_SelectAll_depart


