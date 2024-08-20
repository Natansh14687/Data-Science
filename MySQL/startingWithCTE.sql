create database test_cte;
use test_cte;
show tables;

alter table payment_with_status
rename payment;

alter table raw_customers
rename customers;

alter table raw_orders
rename orders;

select * from customers;
select * from payment;
select * from orders;

with cust as(
select id, first_name from customers
)
select * from cust;

with cust(id, first_name) as (
select id, first_name from customers
)
select * from cust;

use classicmodels;

select * from customers;

with customersInUsa as(
select customerName, state
from customers
where country = "USA"
)
select customerName from customersInUsa 
where state = "NY" order by customerName asc;

select * from customers;

select customerName from customers
where country = "USA" and state = "NY"
order by customerName;

use test_cte;
show tables;

select * from customers;
select * from orders;

with cust as(select id, first_name from customers),
ord as(select id, user_id, order_date from orders),
joining as(
select cust.id, ord.user_id, ord.order_date
from cust
join ord on cust.id = ord.user_id)
select * from joining;

with cust as(
select id, concat(first_name, " ", last_name) as `name` from customers
),
ord as(
select user_id, min(order_date) as first_order, max(order_date) as recent_order,
count(user_id) as num_of_orders
from orders group by 1
),
final as(
select cust.id, cust.`name`, ord.user_id, ord.first_order, ord.recent_order, ord.num_of_orders
from cust
join ord on cust.id = ord.user_id)
select * from final;



