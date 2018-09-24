create table sailorrr(sid int,sname varchar(30),rating int,location varchar(30),age int);
insert into sailorrr values(101,'ajay',3,'dadar',14);
insert into sailorrr values(102,'sham',14,'chembur',13);
insert into sailorrr values(103,'ram',15,'andheri',10);
insert into sailorrr values(104,'shah',10,'vashi',11);
insert into sailorrr values(105,'jay',8,'govandi',12);
select * from sailorrr
create view sailorvw as select * from sailorrr where rating > 7
create rule in_v as on insert to sailorvw do instead insert into sailorrr values(new.sid,new.sname,new.rating,NULL,new.age);
select * from sailorvw

create rule in_v2 as on update to sailorvw do instead update sailorrr set sid=new.sid,sname=new.sname,rating=new.rating,location=NULL,age=new.age where sid=old.sid;
update sailorvw set rating=13 where sid =  105;