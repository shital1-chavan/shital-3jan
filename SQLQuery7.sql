create table orders(OrderID	int,CustomerID int,	EmployeeID int,	OrderDate date,	ShipperID int)
create table  shippers (ShipperID int,	ShipperName varchar(50))
insert into orders values(10248,90,5,'1996-07-04',3),
(10249,81,6,'1996-07-05',1),
(10250,34,4,'1996-07-08',2)
insert into shippers values(1,'Speedy Express'),
(2,'United Package'),
(3,'Federal Shipping')

SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName

select * from orders
select * from shippers

select shippername from shippers 
where exists ( select shipperid from orders where orders.shipperid=shippers.shipperid and shipperid>2)

