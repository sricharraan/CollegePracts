
create table dept1 (did numeric(5,0),dname varchar(10),dlocation varchar(10), constraint pk1 primary key(did));
create table emp1(empid numeric(5,0),enmae varchar(30),did numeric(5,0),CONSTRAINT fkey1 FOREIGN KEY (did)      REFERENCES dept1 (did)) ;
insert into dept1 values(10,'Research','Mumbai');
insert into dept1 values(20,'Research','Poona');
insert into dept1 values(30,'Marketing','Trichi');
insert into dept1 values(40,'Production','Poona');

insert into emp1 values(1,'Sahil',10);
insert into emp1(empid,enmae) values (2,'Saurabh');
insert into emp1 values (3,'Saurabh',20);
select * from emp1;
select * from dept1;
select * from emp1 INNER JOIN dept1 on emp1.did=dept1.did;
select * from emp1 FULL JOIN dept1 on emp1.did=dept1.did
select * from emp1 LEFT JOIN dept1 on emp1.did=dept1.did
select * from emp1 right JOIN dept1 on emp1.did=dept1.did
