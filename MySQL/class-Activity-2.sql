create database activity2;
use activity2;
select * from carsales;

select Make, Model, SalePrice from carsales;

select * from carsales where CountryName = 'United Kingdom';

select * from carsales where CountryName = 'United Kingdom' and SalePrice > 90000;

select * from carsales where Make = 'Rolls Royce' or Make = 'Aston Martin';

select * from carsales order by SalePrice desc;

select distinct Make from carsales;

select * from carsales where Model like "Silver%";

select * from carsales where Region = 'East Midlands' or Region = 'Greater London Authority';

select * from carsales where SalePrice between 80000 and 100000;

select * from carsales where IsDealer is Null;

select * from carsales where TotalDiscount is not null;

select Make, Model, (SalePrice - CostPrice) as Profit from carsales;

select sum(SalePrice) from carsales;

select avg(salePrice) from carsales;

select count(SalePrice) from carsales;

select Make from carsales group by Make having avg(SalePrice) > 90000;



-- 19 
select Make, Model, count(*) as `total cars sold` from carsales group by Make, Model;



-- Intermediate

select * from carsales where SalePrice > CostPrice;

select * from carsales where CountryName = 'United Kingdom' and SalePrice > 80000;

select * from carsales where Make = 'Rolls Royce' or Color = 'Red';

select * from carsales order by CountryName desc, SalePrice desc;

select distinct Color from carsales;

select * from carsales where Make like '%Royce%';

select * from carsales where Make = 'Aston Martin' or Make = 'Rolls Royce';

select * from carsales where InvoiceDate between '2012-01-01' and '2012-12-31';

select * from carsales where IsDealer is NULL;

select * from carsales where TotalDiscount is NOT NULL;


select Make, Model, (SalePrice + DeliveryCharge) as TotalCost from carsales;

select Make from carsales order by SalePrice desc limit 10;