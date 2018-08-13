create table Employee(emp_id CHAR(5) PRIMARY KEY,emp_name varchar(15),job_name varchar(10),manager_id CHAR(5),hire_date date ,salary int,comm int ,deptid char(4));

insert into Employee values ('66928','BLAZE','MANAGER','68319','1991-05-01',2750,0,'3001')
insert into Employee values ('67832','CLARE','MANAGER','68319','1991-06-09',2550,0,'1001')
insert into Employee values ('65646','JONAS','MANAGER','68319','1991-04-02',2957,0,'2001')
insert into Employee values ('64989','ADELYN','SALESMAN','66928','1991-02-20',1700,400,'3001')
insert into Employee values ('65271','WADE','SALESMAN','66928','1991-09-28',1350,600,'3001')
insert into Employee values ('66564','MADDAN','SALESMAN','66928','1991-09-08',1600,0,'3001')
insert into Employee values ('68454','TUCKER','SALESMAN','66928','1991-02-22',1600,0,'3001')
insert into Employee values ('69854','','SALESMAN','66928','1991-02-22',1600,0,'3001')
delete from Employee where emp_id='69854'
Alter table Employee alter column emp_name set NOT NULL 
Alter table Employee add constraint u2 UNIQUE(emp_name)
Alter table Employee add constraint u1 UNIQUE(emp_id)

insert into employee values ('68736','ADNRES','CLERK','67858','1997-05-23',1200,0,'2001');
insert into employee values ('69000','JULIUS','CLERK','67858','1997-05-23',1200,0,'2001');
insert into employee values ('69324','MARKER','CLERK','67832','1992-01-23',1400,0,'1001');
insert into employee values ('67858','SCARLET','ANALYST','65646','1997-04-19',3100,0,'2001');
insert into employee values ('69062','FRANK','ANALYST','65646','1991-12-03',3100,0,'2001');
insert into employee values ('63679','SANDRINE','CLERK','69062','1990-12-18',900,0,'2001');

insert into Employee (emp_id,job_name,manager_id,hire_date,salary,comm,deptid)values ('69854','SALESMAN','66928','1991-02-22',1600,0,'3001')
alter table Employee add constraint chk CHECK(comm>78)
alter table Employee drop constraint u1
select * from Employee


