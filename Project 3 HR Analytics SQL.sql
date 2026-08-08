select *
from `hr-employee-attrition`;
select count(*) as total_employees
from `hr-employees-attrition` ;
select gender, count(*) as total
from `hr-employee-attrition`
group by Gender;
select department, count(*) as total 
from `hr-employee-attrition`
group by Department;
SELECT ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM `hr-employee-attrition`;
select jobrole, count(*) as total 
from `hr-employee-attrition`
group by JobRole
order by total desc;
select educationfield, count(*) as
total
from `hr-employee-attrition`
group by EducationField; 
select * from `hr-employee-attrition`
limit 5;
SELECT Attrition, COUNT(*) AS Total
FROM `hr-employee-attrition`
GROUP BY Attrition;
select 
round(sum(case when attrition='yes'
then 1 else 0 end)*100.0/count(*),2)
as attrition_rate 
from `hr-employee-attrition`;
select department, attrition, count(*)
as total 
from `hr-employee-attrition`
group by Department, Attrition;
select overtime, attrition, count(*)
as total
from `hr-employee-attrition`
group by overtime,	Attrition;
select jobrole, count(*)
as total
from `hr-employee-attrition`
group by jobrole
order by total desc;
select employeenumber, jobrole,monthlyincome
from `hr-employee-attrition`
order by MonthlyIncome desc
limit 10;