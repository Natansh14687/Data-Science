use activity2;

select * from carsales;

select Make, Model, SalePrice from carsales;

select * from carsales
where CountryName = 'United Kingdom';

select * from carsales
where CountryName = 'United Kingdom' and SalePrice > 90000;

select * from carsales
where Make = 'Rolls Royce' or Make = 'Aston Martin';

select * from carsales 
order by SalePrice desc;

select distinct Make from carsales;

select * from carsales
where model like 'Silver%';

select * from carsales 
where Region = 'East Midlands' or Region = 'Greater London Authority';

select * from carsales
where SalePrice between 80000 and 100000;

select * from carsales
where IsDealer is NULL;

select * from carsales
where TotalDiscount is NOT NULL;

select Make, Model, (SalePrice - CostPrice) as Profit
from carsales;

select sum(SalePrice) from carsales;

select avg(SalePrice) from carsales;

select Make, count(*) from carsales
group by Make;

select Make, avg(SalePrice) from carsales
group by make
having avg(salePrice) > 90000;

select c1.Make, c1.Model, c2.Make as AnotherCarMake, c2.Model as AnotherCarModel, c1.CountryName
from carsales c1
join carsales c2 on c1.CountryName = c2.CountryName;


select Make , Model, count(*) as TotalCarsSold
from carsales
group by Make, Model;

select * from carsales where SalePrice > (select avg(salePrice) from carsales);

-- --------------------------Intermediate--------------------------------------------

select * from carsales where SalePrice > CostPrice;

select * from carsales 
where CountryName = 'United Kingdom' and SalePrice > 80000;

select * from carsales where Make = 'Rolls Royce' or Color = 'Red';

select * from carsales order by CountryName desc, SalePrice desc;

select distinct color from carsales;

select * from carsales where Make like "%Royce%";

select * from carsales where Make = 'Aston Martin' or Make = 'Rolls Royce';

select * from carsales where InvoiceDate between '2012-01-01' and '2012-12-31';

select * from carsales where IsDealer is null;

select * from carsales where TotalDiscount is NOT NULL;

select Make, Model, (SalePrice+DeliveryCharge) as TotalCost
from carsales;

select Make, SalePrice
from carsales 
order by SalePrice desc
limit 10;

select * from carsales where Model like "%Ghost";

select * from carsales where length(Region) > 10;

select * from carsales where (SalePrice - CostPrice) > 10000;

select * from carsales where CountryName <> 'United Kingdom'; 

select Make, Model, (SalePrice - CostPrice) as Profit
from carsales;

select * from carsales where year(InvoiceDate) = 2012;

select * from carsales
where CountryName = 'United Kingdom' and (SalePrice > 80000 or Color = 'Red');

select upper(Make) as Make, upper(Model) as Model from carsales;

-- --------------------------------Advanced Level Questions----------------------------

select * from carsales where (SalePrice > CostPrice) and (TotalDiscount > 500 and color <> 'Red');

select * from carsales 
where (Make = 'Rolls Royce' and SalePrice > 90000) 
or
(Make = 'Aston Martin' and SalePrice < 100000);

select Make, Model, SalePrice from carsales
where ((SalePrice - CostPrice) > 20000) and (TotalDiscount <= 1000); 

select Make, Model, Color from carsales 
where Model like 'Silver%' and Color = upper(Color);

select * from carsales 
where (InvoiceDate between '2012-01-01' and '2012-12-31') and (DeliveryCharge between 500 and 1500);

select * from carsales
order by CountryName desc, Make desc, SalePrice desc;

select Make, Model, 
case
when SalePrice > 100000 then 'High'
when SalePrice between 50000 and 100000 then 'Medium'
when SalePrice < 50000 then 'Low'
end as PriceCategory
from carsales;

select * from carsales where length(Make) > 5 and Color like '%Yellow%'; 

select Make, Model, (SalePrice-CostPrice-DeliveryCharge) as NetProfit
from carsales
having NetProfit > 0;

select * from carsales where Make <> 'Rolls Royce' and (SalePrice not between 80000 and 100000);

select * from carsales where IsDealer is NULL and (SalePrice - TotalDiscount) > 85000;

select Make, Model, round(SalePrice, -3) as RoundedSalePrice from carsales;

select Make, concat(lower(Model)+'_model') from carsales;

select * from carsales where InvoiceNumber like '[0-9][A-Z a-z]';

select * from carsales where (SalePrice > CostPrice) and (Make = 'Aston Martin' or
Make = 'Rolls Royce') and Color <> 'Blue';

select * from carsales 
where (SalePrice + DeliveryCharge) < 100000 and CountryName = 'United Kingdom';

select *, 
case 
when SalePrice > 90000 then 'Expensive'
when SalePrice between 50000 and 90000 then 'Affordable'
when SalePrice < 50000 then 'Cheap'
end as Categories
from carsales;

select * from carsales where month(InvoiceDate) = 1 and Model like '%s%';

select *, 
case Make
when  'Aston Martin' then SalePrice
when 'Rolls Royce' then -SalePrice
end as CustomOrder
from carsales; 

select Make, Model,
case 
when TotalDiscount is not null then SalePrice - TotalDiscount
when TotalDiscount is null then 0
end as DiscountedPrice
from carsales;







