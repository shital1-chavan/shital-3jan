create table customer( cid int primary key,cname varchar(20),city varchar(20))
insert into customer values (1001,'prajwal padul','mumbai'),(1002,'maithili padul','kharghar'),
(1004,'manohar padul','fort'),(1005,'shital padul','navi mumbai')

create table oorder(oid int primary key,cid int foreign key references customer,odate date)
insert into oorder values(1,1005,'2/7/2021'),(3,1005,'4/7/2021'),(4,1001,'4/7/2021')

select oorder.oid,customer.cid,customer.cname
from oorder inner join customer on customer.cid=oorder.cid