-- Retrieve the different Rating from the Movie table
select Rating from Movie;

-- Retrieve all Video Code and Movie Title from Movie table with Rating = ‘PG’ or ‘R’
select VideoCode, MovieTitle from Movie where Rating in ('PG','R');

-- Retrieve all Video Code and Movie Title from Movie table with TotalStock greater than 4
select VideoCode, MovieTitle from Movie where TotalStock>4;

-- Retrieve CustomerName who has made a transaction (IssueTran)
-- • Hint: use subquery for Customer and Issuetran tables
select CustomerName from Customers where CustomerID in (select CustomerID from IssueTran);

-- Retrieve CustomerName who has made a transaction (IssueTran) for the videocode = 27
select CustomerName from Customers where CustomerID in (select CustomerID from IssueTran where VideoCode=27);