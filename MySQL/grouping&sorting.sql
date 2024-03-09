create database testdb;
use testdb;
select * from superstore;
select `order id` from superstore;
select region,sales from superstore order by sales desc;
select region,sales from superstore order by region,sales desc;
select region,sum(sales) as total_sales from superstore group by region order by total_sales asc;
select segment,sum(profit) as total_profit from superstore group by segment order by total_profit desc;
select state,sum(sales) as total_sales from superstore group by state having total_sales > 2500;
select state,count(`ship mode`) as shipmode_count from superstore group by state having shipmode_count > 7 order by shipmode_count desc;
select city,sum(quantity) as total_quantity from superstore group by city having total_quantity > 20 order by total_quantity desc;
select region,sum(profit) as total_profit from superstore group by region having total_profit > -243 order by total_profit desc;

