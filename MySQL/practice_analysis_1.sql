-- create database question;
-- use question;
-- select * from students;
-- select religion,age,gender,stay,japanese from students limit 9;
-- select stay as stay,intimate as count_int,phone as average_phq,age as average_scs,japanese as average_as from students;
-- select distinct(stay_cate) as length_of_stay, round(avg(todep),2) as `PHQ-9 test`, round(avg(tosc),2) 
-- as `SCS test`, round(avg(toas),2) as `ASISS test`
-- from students group by length_of_stay order by length_of_stay desc;

-- select distinct(stay_cate) as length_of_stay, (count(japanese)+count(english)) from students
-- group by length_of_stay;

SELECT stay, 
       COUNT(*) AS count_int,
       ROUND(AVG(todep), 2) AS average_phq, 
       ROUND(AVG(tosc), 2) AS average_scs, 
       ROUND(AVG(toas), 2) AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;