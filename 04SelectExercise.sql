-- 1
-- select distinct CompanyName from Shippers;
-- select CompanyName from Shippers order by CompanyName; 

--2
-- select FirstName, LastName, Title, BirthDate, City from Employees;
-- select distinct title from employees;

--3 
-- select * from orders where OrderDate = '19 May 1997';

--4
-- select * from customers where city in ('london','madrid');
-- -- also can consider or operator.
-- select * from customers where city ='london' or city='madrid';

--5
-- select phone, contactname from Customers where country='UK' order by ContactName;

--6
-- select orderid, orderdate from orders where customerid = 'Hanar';

--7 
-- good to have alias to refer easily
-- select (titleofcourtesy + ' ' + firstname + ' ' + lastname) as EmployeeName from Employees order by EmployeeName;


--10
-- select customerid,contactname from Customers where customerid not in (select distinct customerid from orders);

--13
-- identify unique customers
-- select count(distinct customerid) from orders; 
-- -- does not identify unique customers
-- select count(customerid) from orders; 


--15
-- assume sales = unit price * qty
-- aggregate function: return only 1 value
-- cannot mix row function with aggregate function. will give error in MSQL
-- select * from [Order Details]

-- date_format not required in solution. not required in MSSQL server
-- schema = database design definition.