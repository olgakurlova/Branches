--SQL_DDL
--Первая часть.

--Таблица employees

--1)Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--2)Наполнить таблицу employee 70 строками.

create  table employees(
	id serial primary key,
	employee_name varchar(50) unique not null);


insert into employees(id, employee_name)
values (default, 'Ivan'),
	   (default, 'carlie'),
	   (default,'Kinsley'),
	   (default, 'leonl'),
	   (default,'John'),
	   (default,'Albert'),
	   (default, 'Lucy'),
	   (default, 'adib'),
	   (default, 'Alvine'),
	   (default, 'Sophi'),
	   (default, 'Hasna'),
	   (default, 'Claudette'),
	   (default, 'Donalda'),
	   (default, 'Leonela'),
	   (default, 'Aria'),
	   (default, 'Jimi'),
	   (default, 'Jerica'),
	   (default, 'Antoinette'),
	   (default, 'Martin'),
	   (default, 'Aaliyah'),
	   (default, 'Carly'),
	   (default, 'Charlie'),
	   (default, 'Luci'),
	   (default, 'Leoniila'),
	   (default, 'Hailey'),
	   (default, 'Khalila'),
	   (default, 'Jamesina'),
	   (default, 'Thomasina'),
	   (default, 'Allison'),
	   (default, 'Alexander'),
	   (default, 'Clara'),
	   (default, 'Carla'),
	   (default, 'Peter'),
	   (default, 'Teresa'),
	   (default, 'James'),
	   (default, 'Michaela'),
	   (default, 'Luna'),
	   (default, 'Henrietta'),
	   (default, 'Elwanda'),
	   (default, 'Anila'),
	   (default, 'Brendan'),
	   (default, 'Paulina'),
	   (default, 'Roman'),
	   (default, 'Olga'),
	   (default, 'Andrew'),
	   (default, 'Fedor'),
	   (default, 'Igor'),
	   (default, 'Vadim'),
	   (default, 'Artem'),
	   (default, 'Vladimir'),
	   (default, 'Brian'),
	   (default, 'Gianna'),
	   (default, 'Emelie'),
	   (default, 'Bella'),
	   (default, 'Sebastia'),
	   (default, 'Josephine'),
	   (default, 'Burt'),
	   (default, 'Rene'),
	   (default, 'Vitoria'),
	   (default, 'Jaimi'),
	   (default, 'Lewis'),
	   (default, 'Tommy'),
	   (default, 'Nikolia'),
	   (default, 'Max'),
	   (default, 'Toni'),
	   (default, 'Sarah'),
	   (default, 'Cristiano'),
	   (default, 'Tammy'),
	   (default, 'Valeriy'),
	   (default, 'Pavel');
	   
	  select * from employees;
	 

	  	
--Таблица salarynew

--3) Создать таблицу salarynew
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--4) Наполнить таблицу salarynew 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500
		
create table salarynew(
id serial primary key,
monthly_salary int not null);

insert into salarynew (id,monthly_salary)
values (default,1000),
(default,1100),
(default,1200),
(default,1300),
(default,1400),
(default,1500),
(default,1600),
(default,1700),
(default,1800),
(default,1900),
(default,2000),
(default,2100),
(default,2300),
(default,2400),
(default,2500);

insert into salarynew (id,monthly_salary)
values(default,2200);

select * from salarynew;
select * from salarynew where id = 16;

--Таблица employee_salary

--5) Создать таблицу employee_salary
--- id. Serial  primary key,
-- employee_id. Int, not null, unique
--- salary_id. Int, not null
--6) Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id



create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);
select * from employee_salary;

insert into employee_salary(id,employee_id,salary_id)
values (default,71,1),
(default,72,2),       
(default,73,3),
(default,74,4),       
(default,75,5),
(default,76,6),       
(default,77,7),
(default,78,8),       
(default,79,9),
(default,80,10),      
(default,1,11),
(default,2,12),       
(default,3,13),
(default,4,14),       
(default,5,15),
(default,6,16),       
(default,7,1),
(default,8,2),       
(default,9,3),
(default,10,4),       
(default,11,5),
(default,12,6),       
(default,13,7),
(default,14,8),       
(default,15,9),
(default,16,10),       
(default,17,11),
(default,18,12),       
(default,19,13),
(default,20,14),
(default,21,15),
(default,22,16),       
(default,23,1),
(default,24,2),       
(default,25,3),
(default,26,4),       
(default,27,5),
(default,28,6),       
(default,29,7),
(default,30,8);

select * from employee_salary;

--Таблица roles

--7)Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--8) Поменять тип столба role_name с int на varchar(30)
--9) Наполнить таблицу roles 20 строками:


create table rolesnew(
id serial primary key,
role_name int unique not null);

alter table rolesnew
alter column role_name type varchar(30);

select *from rolesnew;

insert into rolesnew(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineerr'),
       ('Senior Automation QA engineer');
select * from rolesnew;

--Таблица roles_employee

--10) Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы rolesnew, поле id)
--11) Наполнить таблицу roles_employee 40 строками:


create table roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key(employee_id)
references employees(id),
foreign key(role_id)
references rolesnew(id));

select *from roles_employee;

insert into roles_employee(employee_id,role_id)
values(1,1),
      (2,3),
      (3,5),
      (4,6),
      (5,8),
      (6,10),
      (7,12),
      (8,11),
      (9,7),
      (10,15),
      (11,20),
      (12,17),
      (13,13),
      (14,2),
      (15,14),
      (16,18),
      (17,16),
      (18,17),
      (19,11),
      (20,10),
      (21,2),
      (22,12),
      (23,13),
      (24,6),
      (25,9),
      (26,4),
      (27,14),
      (28,19),
      (29,11),
      (30,6),
      (31,17),
      (32,9),
      (33,5),
      (34,11),
      (35,6),
      (36,9),
      (37,4),
      (38,14),
      (39,19),
      (40,11);
    
     select * from roles_employee;
    
      --2я часть 2 ДЗ SQL
    --Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )
    --1)Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
    
    --select employee_name,salary_id,monthly_salary from employees
    --inner join employee_salary on employee_id=employees.id
    --inner join salarynew as sal on sal.id=employee_salary.salary_id;
   -- для проверки корректности 1 join выводим salary_id
   
   select employee_name,monthly_salary from employees
    inner join employee_salary on employee_id=employees.id
    inner join salarynew as sal on sal.id=employee_salary.salary_id;
   
   --2) Вывести всех работников у которых ЗП меньше 2000.
   
select employee_name,monthly_salary from employees
inner join employee_salary on employee_id=employees.id
inner join salarynew as sal on sal.id=employee_salary.salary_id
where monthly_salary < 2000;

--3) Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)??????




select monthly_salary,e.employee_id from salarynew
left outer join employee_salary as e on e.salary_id=salarynew.id
left outer join employees as emp on emp.id=e.employee_id
where  employee_name is null;

-- employee_salary.employee_id вывели для проверки - т.к 10 из 40 значений employee_id в таблице employee_salary были заполнены несуществующими id


--4) Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)


select monthly_salary from salarynew
left outer join employee_salary as e on e.salary_id=salarynew.id
where  employee_id is null and monthly_salary <2000;
--нет таких зарплатных позиций -т.к в таблице employee_salary каждому id зарплаты(salary_id) был назначен id работника(employee_id)

--5)Найти всех работников кому не начислена ЗП.

select employees.id, employee_name from employees 
left outer join employee_salary as e on  e.employee_id=employees.id
where e.salary_id is null;

--6) Вывести всех работников с названиями их должности.

select employees.id, employee_name,rol.role_id ,r.role_name 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id;

--employees.id,role_id-вывели для проверки

--7)Вывести имена и должность только Java разработчиков.

select employee_name,r.role_name 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
where role_name like'% Java developer';

--8)Вывести имена и должность только Python разработчиков.
select employee_name,r.role_name 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
where role_name like'% Python developer';

--9) Вывести имена и должность всех QA инженеров

select employee_name,r.role_name 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
where role_name like'% QA engineer';

--10) Вывести имена и должность ручных QA инженеров.

select employee_name,r.role_name 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
where role_name like'% Manual QA engineer';

--11) Вывести имена и должность автоматизаторов QA

select employee_name,r.role_name 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
where role_name like'% Automation QA engineer';

--12) Вывести имена и зарплаты Junior специалистов

select employee_name,r.role_name,emsal.salary_id ,sn.monthly_salary 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'Junior%';

--13) Вывести имена и зарплаты Middle специалистов

select employee_name,r.role_name,emsal.salary_id ,sn.monthly_salary 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'Middle%';

--14) Вывести имена и зарплаты Senior специалистов

select employee_name,r.role_name,sn.monthly_salary 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'Middle%';

--15)Вывести зарплаты Java разработчиков

select r.role_name,sn.monthly_salary 
from roles_employee
join rolesnew as r on r.id=roles_employee.role_id
join employee_salary as emsal on emsal.employee_id=roles_employee.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'%Java developer';

--16) Вывести зарплаты Python разработчиков

select r.role_name,sn.monthly_salary 
from roles_employee
join rolesnew as r on r.id=roles_employee.role_id
join employee_salary as emsal on emsal.employee_id=roles_employee.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'%Python developer';

--17)Вывести имена и зарплаты Junior Python разработчиков

select employee_name,r.role_name,sn.monthly_salary 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'Junior Python developer';

--18)Вывести имена и зарплаты Middle JS разработчиков

select employee_name,r.role_name,sn.monthly_salary 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'Middle JavaScript developer';

--19) Вывести имена и зарплаты Senior Java разработчиков

select employee_name,r.role_name,sn.monthly_salary 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'Senior Java developer';

--20) Вывести зарплаты Junior QA инженеров

select employee_name,r.role_name,sn.monthly_salary 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'Junior% QA engineer';

--21)Вывести среднюю зарплату всех Junior специалистов

select avg(sn.monthly_salary)
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'Junior%';

--22)Вывести сумму зарплат JS разработчиков

select sum(sn.monthly_salary) 
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'%JavaScript developer';

--23)Вывести минимальную ЗП QA инженеров

select min(sn.monthly_salary)
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'%QA engineer';

--24)Вывести максимальную ЗП QA инженеров

select max(sn.monthly_salary)
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'%QA engineer';

--25)Вывести количество QA инженеров

select count(employees.id)
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'%QA engineer';

--26)Вывести количество Middle специалистов.

select count(employees.id)
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'%Middle%';

--27)Вывести количество разработчиков

select count(employees.id)
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'%developer%';

--28)Вывести фонд (сумму) зарплаты разработчиков.

select sum(sn.monthly_salary)
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
where role_name like'%developer%';

--29)Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name,r.role_name,sn.monthly_salary
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id 
order by sn.monthly_salary asc ;

--30)Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name,r.role_name,sn.monthly_salary
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id
where sn.monthly_salary between 1700 and 2300
order by sn.monthly_salary asc ;

--31)Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name,r.role_name,sn.monthly_salary
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id
where sn.monthly_salary < 2300
order by sn.monthly_salary asc ;

--32)Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name,r.role_name,sn.monthly_salary
from employees
join roles_employee as rol on rol.employee_id=employees.id
join rolesnew as r on r.id=rol.role_id
join employee_salary as emsal on emsal.employee_id=rol.employee_id
join salarynew as sn on sn.id=emsal.salary_id
where sn.monthly_salary =1100 or sn.monthly_salary=1500 or sn.monthly_salary=2000
order by sn.monthly_salary asc ;

