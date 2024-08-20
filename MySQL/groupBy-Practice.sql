use classicmodels;
desc productlines;
select * from productlines;

select productLine, count(*)
from productlines
group by productLine;

select * from products;

select productLine, count(*)
from products
group by productLine;

select productScale, avg(quantityInStock) as avg_stock
from products
group by productScale;

select productVendor, sum(buyPrice * quantityInStock) as totalValueOfProducts
from products
group by productVendor;

