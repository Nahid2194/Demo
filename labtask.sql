create table worker{
	worker_id number(10)  not null,
	first_name  varchar(15),
	last_name   varchar(15),
	salary      number(10),
	joining_date  varchar(15),
	Department   varchar(20),
	PRIMARY KEY(worker_id)
}


CREATE table Bonus{
worker_id   number(10)  not null,
Bonus_date   DATE,
Bonus_amount  number(10),
PRIMARY KEY (worker_id),
FOREIGN KEY (worker_id) REFERENCES worker(worker_id)

}


create table work_title{
worker_id number(10)  not null,
title    varchar(10)  not null,
job_starting_date  DATE,
PRIMARY KEY (worker_id,title),
FOREIGN KEY (worker_id) REFERENCES worker(worker_id) ON DELETE CASCADE

}

INSERT INTO worker VALUES (124,'rahat','arefin',20000,'20-jul-2019','admin');
INSERT INTO worker VALUES (126,'adam','muhmud',10000,'20-jun-2016','accountant');
INSERT INTO worker VALUES (125,'shakhawat','zahir',15000,'12-sep-2018','hr');
INSERT INTO worker VALUES (128,'saeed','khan',18000,'02-jan-2017','accountant');
INSERT INTO worker VALUES (130,'abir','khan',12000,'08-feb-2019','hr');


INSERT INTO work_title VALUES(123, 'manager','25-jul-2020');
INSERT INTO work_title VALUES(124, 'manager','25-jul-2020');
INSERT INTO work_title VALUES(125, 'executive','25-jun-2020');
INSERT INTO work_title VALUES(126, 'executive','25-jun-2020');
INSERT INTO work_title VALUES(127, 'asstmanager','25-jan-2020');
INSERT INTO work_title VALUES(128, 'asstmanager','25-sep-2020');
INSERT INTO work_title VALUES(129, 'lead','25-aug-2020');
INSERT INTO work_title VALUES(130, 'lead','25-dec-2020');

INSERT INTO bonus VALUES (125,'25-jul-2020',5000);
INSERT INTO bonus VALUES (127,'25-jun-2020',6000);
INSERT INTO bonus VALUES (123,'25-aug-2020',7000);
INSERT INTO bonus VALUES (130,'25-feb-2020',8000);
INSERT INTO bonus VALUES (126,'25-jan-2020',4000);


select first_name from worker where  first_name like '%ab%' or last_name like '%ab%'  or first_name LIKE '%sa%' or first_name LIKE '%sa%' ;

select *from worker where salary = max(salary);
select max(salary) from worker;

select job_starting_date from worker;


select job_starting_date from worker
inner join on worker.worker_id = work_title.worker_id 
where title='manager'; 



select &from worker 
where salary> avg(salary);

select title from work_title 
inner join on work_title.worker_id =  bonus.worker_id 
where Bonus_amount>10000;

select sum(salary) from worker
inner join on worker.worker_id = work_title.worker_id 
where title='executive'; 

select max(salary) from worker
inner join on worker.worker_id = work_title.worker_id 
where title='manager'; 

select avg(salary) from worker group by salary; 

select * from worktitle inner join on 
work_title.worker_id =  bonus.worker_id  
where title= 'lead' and  job_starting_date = '02-jan-2015';


