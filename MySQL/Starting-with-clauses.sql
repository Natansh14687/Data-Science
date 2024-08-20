use activity2;
show tables;
select * from carsales;

select Make from carsales group by Make;

select count(Make), Make from carsales group by Make;