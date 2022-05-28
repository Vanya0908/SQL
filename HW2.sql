--Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select *
from employees;

--Наполнить таблицу employees 70 строками
insert into employees(employee_name)
values  ('Ivan_Petrov'),
		('Ayrton_Senna'),
		('Alen_Prost'),
		('Niki_Lauda'),
		('Jan_Alesi'),
		('Alberto_Ascari'),
		('Jim_Clark'),
		('Clay_Regacconi'),
		('Yohan_Rindt'),
		('Nino_Farina'),
		('Gerhard_Berger'),
		('James_Hunt'),
		('Daymon_Hill'),
		('Kimi_Raikonen'),
		('Max_Verstappen'),
		('Lewis_Hamilton'),
		('Ronie_Peterson'),
		('Maik_Hotorn'),
		('Jack_Brebem'),
		('Fil_Hill'),
		('Gram_Hill'),
		('Jon_Sertis'),
		('Jackie_Steyart'),
		('Emerson_Fitipaldi'),
		('Mario_Andretti'),
		('Jodi_Shecter'),
		('Alan_Jons'),
		('Nelson_Pique'),
		('Keke_Rosberg'),
		('Naigel_Mensol'),
		('Michael_Shumacher'),
		('Jac_Vilnev'),
		('Mika_Hakkinen'),
		('Fernando_Alonso'),
		('Jenson_Button'),
		('Sebastian_Vettel'),
		('Nico_Rosberg'),
		('Carlos_Sains'),
		('Sharl_Leclair'),
		('Cheko_Peres'),
		('Jorg_Russel'),
		('Nicolas_Lattifi'),
		('Roger_Willamson'),
		('Lando_Norris'),
		('Alex_Albon'),
		('Daniel_Ricardo'),
		('Valteri_Bottas'),
		('Mick_Shumacher'),
		('Nikita_Mazepin'),
		('Roman_Grozhan'),
		('Nico_Hulkinberg'),
		('Hainc_Harald'),
		('Oliver_Panis'),
		('Edie_Irvain'),
		('Rubens_Baricello'),
		('Roland_Racenberger'),
		('Esteban_Ocon'),
		('Huan_Pablo'),
		('Jil_Vilnev'),
		('Cooper_Shucar'),
		('Lella_Lombardi'),
		('Jeremi_Clarcson'),
		('Jeims_Mai'),
		('Veronica_Caricina'),
		('Mark_Webber'),
		('Luka_Demontedzemola'),
		('Enzo_Ferrari'),
		('Ron_Dennis'),
		('Berni_Acalstoun'),
		('Huan_Fanhio');
--	drop table employees


	
--Создать таблицу salary	
create table salary(
	id serial  primary key,
	monthly_salary int not null
	
);				
		
select * from salary;

--Наполнить таблицу salary 15 строками
insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400);
	   

	  
--Создать таблицу employee_salary
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null

);

select *
from employee_salary;

--Наполнить таблицу employee_salary 40 строками(в 10 строк из 40 вставить несуществующие employee_id)
insert into employee_salary(employee_id,salary_id)
values(12,5),
	(45,6),
	(34,13),
	(23,4),
	(56,2),
	(43,7),
	(11,8),
	(17,9),
	(15,11),
	(18,5),
	(22,15),
	(30,10),
	(41,12),
	(49,1),
	(67,3),
	(60,14),
	(20,4),
	(29,13),
	(66,6),
	(36,12),
	(24,7),
	(55,15),
	(47,11),
	(1,14),
	(5,7),
	(9,9),
	(19,4),
	(25,9),
	(27,6),
	(37,3),
	(87,45),
	(98,16),
	(77,98),
	(71,20),
	(99,56),
	(79,76),
	(80,99),
	(78,17),
	(88,65),
	(91,64);



--Создать таблицу roles
create table roles(
	id serial primary key,
	role_name int not null unique
	
);

select *
from roles;

--Изменить тип данных столбца role_name с int на varchar(30)
alter table roles 
drop role_name;

alter table roles 
add role_name varchar(30) not null unique;

--Наполнить таблицу roles 20 строками
insert into roles(role_name)
values('Junior Python developer'),
	  ('Middle Python developer'),
	  ('Senior Python developer'),
	  ('Junoir Java developer'),
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
	  ('Sales Manager'),
	  ('Junior Automation QA engineer'),
	  ('Middle Automation QA engineer'),
	  ('Senior Automation QA engineer');

	 
	 
--Создать таблицу roles_employee	 
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,--внешний ключ для таблицы employees,поле id
	role_id int not null,--внешний ключ для таблицы roles,поле id
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
)	 

select *
from roles_employee;

--Наполнить таблицу roles_employees 40 строками
insert into roles_employee(employee_id,role_id)
values(5,20),
	(15,5),
	(25,15),
	(35,10),
	(45,6),
	(55,16),
	(65,7),
	(7,1),
	(17,11),
	(27,18),
	(37,2),
	(47,12),
	(57,3),
	(67,14),
	(6,4),
	(16,8),
	(26,19),
	(36,9),
	(46,13),
	(56,17),
	(66,5),
	(4,2),
	(14,16),
	(24,11),
	(34,6),
	(44,3),
	(54,12),
	(64,11),
	(3,18),
	(13,14),
	(23,2),
	(33,16),
	(43,8),
	(53,19),
	(63,4),
	(2,12),
	(12,13),
	(22,17),
	(32,11),
	(42,5);
