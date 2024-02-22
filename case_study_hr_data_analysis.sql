



/* Name - Sarthak Pradip Samgir
   project name - SQL Case Study – HR Data Analysis.*/

use hr;

#Problem Statements to be solved using - Where Clause--------------------------------------------------------------

#1
select first_name  , department_id from employees 
where first_name ='de haan' or last_name = 'de haan';

#2
select * from departments
 where department_name ='sales';
 
 #3
 select  concat (first_name ,' ',last_name) as full_name
 ,department_id ,salary from employees where salary > 9700;
 
 #4
 select *from employees where hire_date = 1992-01-01;
 
 #5
 select employee_id ,first_name,job_id,department_id
 from employees where department_id  in (20,60,80);
 
 #6
 select employee_id,first_name,job_id,department_id
 from employees where department_id not in(20,60,80);
 
 #7
 select last_name ,phone_number, salary,manager_id from 
 employees where manager_id in(100,102,103);
 
 #8
 select first_name , salary from employees 
 where first_name like '%e';
 
 #9
 select last_name ,department_id from employees
 where last_name like '_i_%';
 
#10
select *from employees
 where last_name like
'L%'or last_name like 'j%'
 or last_name like 'h%' order by last_name desc;
 
 #11
 select first_name ,hire_date,salary, department_id from employees
 where first_name not like '%a%' order by department_id desc;
 
 #12
 select *from employees where department_id is null;
 
 #13
 select concat(first_name ,' ',last_name)as name_ ,salary from
 employees where salary between 7000 and 15000 order by name_ ;
 
 #14
 select concat(first_name,' ',last_name)full_name ,
 concat(phone_number,'  ',email)as sal from employees
 where salary between 5000 and 10000;
 
 #15
 select *from employees where salary between 800 and 6000
 and commission_pct is not null and department_id not in(80,90,100) 
 and hire_date < '1990-01-01';
 
 #16
 select last_name ,job_id,hire_date from employees 
 where hire_date between '1995-12-12' and '1998-04-17';
 
 #17
 select concat(first_name , ' ',last_name) as full_name ,hire_date,
 commission_pct,phone_number,salary from employees 
 where salary > 10000 or phone_number like '__5%'; 
 
 #18
 select last_name ,salary from employees where salary > 12000;
 
 #19
 select last_name ,department_id from employees where department_id 
 in(50,80);
 select last_name ,department_id from employees where department_id 
 =50 or department_id =80;
 #20
 select first_name ,salary,commission_pct from employees where commission_pct is null;
 
 #21
 select first_name salary  ,manager_id from employees where
 manager_id  is not null;
 
 #Problem Statements to be solved using – SQL Scalar/Numeric Functions---------------------------------------------------------------------------
  
  #1
  select lower(first_name), upper(last_name) from employees
  where employee_id between 80 and 150;
  
  #2
  select first_name ,last_name from employees
  where lower(last_name)='king';
  
  #3
  #a & b
  select first_name,last_name ,concat(lower(left(first_name ,1)),lower(left(last_name,3)),'@oracle.com') as email_add from employees;
  
  #4 a
  select concat(first_name ,' ',last_name) as full_name from employees;
 
 #4 b
 select concat(first_name,'  ',last_name,' ',hire_date) as 
 'employee name with joining date' from employees;
 
 #5
 select last_name from employees where length(last_name)>8;
 
 #6 a & b
 select first_name ,last_name ,replace(phone_number ,515,815)from employees;
 
 #7
 select first_name from employees; 
 select salary from employees;
 select first_name ,salary, salary *0.12 as new_salary from 
 employees;
 select first_name ,salary, round(salary *0.12 )as new_salary from 
 employees;
 select first_name ,salary,ceil( salary *0.12 )as new_salary from 
 employees;
 
 
 
 #9
 select first_name, last_name, hire_date, datediff(curdate(),hire_date) /30 as mpoths_workerd,
 year(curdate())-year(hire_date)as years_worked from employees;
 use hr;
 
 #10
 select first_name ,hire_date, date_add(hire_date, interval 1 year)from employees;
 
 #11
 select first_name ,hire_date ,floor(year(hire_date)),floor(month(hire_date))
 from employees;
 
 #12
  select first_name ,floor(year(hire_date)),floor(day(hire_date))
 from employees;
 

 #13
 select upper(last_name) ,format(salary,3),
 date_format(hire_date,'%d/%m/%Y') from employees
 WHERE LAST_NAME LIKE 'D%' OR LAST_NAME LIKE 'K%';
 
 #14 A & B
select first_name,last_name,salary ,
coalesce(commission_pct,0) from  employees;

select first_name,last_name,salary ,
coalesce(commission_pct,'no commission') from  employees;

#15
select first_name,last_name,salary,
case
When salary between 0 and 5000 then 'A'
When salary between 5001 and 15000 then 'B'
When salary between 15001 and 20000 then 'C'
else 'D'
END AS salary_grade
from employees;
 
# Problem Statements to be solved using – Basic Select Statements------------------------------------------------------------------
 
 #1
 select employee_id first_name,last_name ,phone_number, department_id
 from employees;
 
 #2
 select first_name ,last_name, hire_date,salary, salary*0.20 as
 'annual sal' from employees; 
 
 #3
 select concat(last_name,' ',first_name)as full_name,
 concat(phone_number,'-',email)as contact_details 
 from employees;

#4
select distinct manager_id from employees;

#5
select concat(last_name,'  ',job_id )as employee_and_title from employees;

#6
select first_name as FN ,last_name as LN, salary as SL,
concat(hire_date, 'HD') as HD from employees;

#7
select distinct salary from employees;

#8
select distinct department_id ,job_id from employees;


#Problem Statements to be solved using – Group By------------------------

#1
select min(last_name) from employees order by last_name;

#2
 select max(last_name) from employees order by last_name;
 
 #3
 select  count(*) as number_of_rows from employees;
 
 #4
 select count(commission_pct) from employees;
 
#5
select count(*) from employees where commission_pct is null;

#6
select max(salary),min(salary),avg(salary) from employees;

#Problem Statements to be solved using - GROUP BY and HAVING Clauses----------------------------------------------------

#7
select department_id, avg(salary) from employees
group by department_id;

select department_id ,avg(salary) from employees
group by department_id having department_id in(50,80);

#8
select job_id,count(employee_id) from 
employees group by job_id;

select job_id,count(employee_id) from 
employees group by salary having salary>10000;

select job_id,count(*) as total from 
employees group by job_id having total >2 ;

#9
select department_id,job_id,avg(salary) from employees
group by department_id,job_id;

#10
select manager_id ,max(salary) from employees 
group by manager_id;

select manager_id,max(salary )as max from employees
group by manager_id having max > 10000;

#11
select job_id,min(salary)as min from employees
group by job_id having min>7000;

#12
select department_id ,avg(salary) as min from employees 
group by department_id having department_id in(20,80)
and  min >9000;

#Problem Statements to be solved using – SQL Sub-Queries------------------------
#1
select first_name ,salary from employees 
where salary > (select salary from employees where employee_id =103); 

#2
select department_id ,department_name from departments 
where location_id =(select location_id where department_id =90);

#3
select last_name,hire_date from employees 
where hire_date >(select hire_date from employees
 where employee_id =101);


#4
select  first_name, last_name, department_id
from Employees
where  department_id = (
select department_id  from Departments
where department_name = 'Sales'
);
#5
select department_id ,department_name from departments 
where location_id =(select location_id from departments where location_id ='toronto');

#6
select first_name, salary ,department_id from employees
where employee_id =(select employee_id from employees where
employee_id ='124');

#7
select first_name , salary , department_id from employees 
where salary > (select avg(salary) from employees );

#8
select first_name ,salary,department_id from employees
where salary in(select salary from employees 
where department_id= 20);

#9
select first_name ,salary,department_id from employees 
where department_id =50 and salary > (select max(salary) from employees where
department_id =50);

#10
select first_name ,salary, department_id from employees 
where department_id =60 and salary > ( select min(salary) from employees where 
department_id = 60);


#11
select first_name,salary,department_id from employees 
where department_id = 90 and salary < (select min(salary) from employees where
department_id =90);

#12
select  first_name, salary, department_id
from Employees
where department_id in (
select department_id
from Departments
where location_id = (
select location_id  from Locations
where city = 'Seattle'
  )
);

#13
select first_name , salary, department_id from employees
where first_name='kevin' and salary <(select avg(salary) from employees where 
first_name ='kevin');



# Problem Statements to be solved using – Inner JOIN--------------------------------------------
#1
select *
from employees
inner join departments
on employees.department_id = departments.department_id;

select e.first_name ,e.last_name,d.department_name 
from employees as e
inner join departments as d on
e.department_id= d.department_id ;

select e.first_name ,e.last_name,d.department_name 
from employees as e
inner join departments as d on
e.department_id= d.department_id 
where d.department_id in(50,90);

#2
select d.department_name ,l.city,l.state_province
from departments as d
inner join locations as l on
d.location_id = l.location_id;

select concat(e.first_name, '  ',e.last_name) as full_name,
d.department_name ,l.city ,l.state_province
from employees as e
inner join departments as d on 
e.department_id = d.department_id
inner join locations as l on
d.location_id = l.location_id;


select concat(e.first_name ,' ',e.last_name) as 'full name',
d.department_name, l.city,l.state_province from employees as e
inner join departments as d on
e.department_id = d.department_id 
inner join locations as l on
d.location_id = l.location_id
where e.last_name like '%a' ;


#Problem Statements to be solved using – Outer JOIN -----------------------------------------
#4
select e.first_name ,e.last_name ,e.department_id,
d.department_name from employees as e
left  outer join departments as d on
e.department_id = d.department_id;

select e.first_name ,e.last_name ,e.department_id,
d.department_name from employees as e
left  outer join departments as d on
d.department_id = e.department_id;

# problem Statements to be solved using – Self JOIN-----------------
#5
select e.last_name ,m.last_name from employees as e
join employees as m on
e.manager_id = m.employee_id;


select e.last_name ,m.last_name from employees as e
left join employees as m on
e.manager_id = m.employee_id;

#6
select e.first_name , e.last_name , e.department_id 
from employees as e
join  employees as king 
on e.department_id = king.department_id 
where king.last_name ='king';

#7
select e.last_name,e.salary 
from employees as e
join employees as sal
on e.salary < sal.salary
where sal.employee_id =103; 




 