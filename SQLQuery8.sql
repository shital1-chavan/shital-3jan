select * into neworder from oorder
select * from student4
select * from student3

insert into student4 select * from student3 

select rno,sname,
case 
when sci<50 then 'dha student'
when sci<70 then 'average student'
else 'hushaar student'
end as scientist 
from student 

create procedure allorders as select * from oorder go
exec allorders
