use demo_db;
create table Departments
 (Dept_Name varchar(30) not null,
 Dept_Id int Primary key);
 insert into Departments (Dept_Name, Dept_Id) values("IT", 80), ("Administration", 90),
("Human_Resources", 70);
select * from Departments;
create table Employeees 
(Emp_Id int, 
First_Name varchar(30), 
Last_Name varchar(30), 
Email varchar(50) unique, 
Phone_Number int unique, 
Hire_Date DATE not null, 
Salary int , 
Dept_Id int , 
Job_Title varchar(30),
foreign key(Dept_Id) references Departments(Dept_Id));
insert into Employeees(Emp_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Salary,Dept_Id,Job_Title) 
values(101, "priyanka", "kulkarni", "p.k@gmail.com","12345","1999-08-21","20000", "80","Programmer"),
(102, "priyanka2", "kulkarni2", "p.k2@gmail.com","22345","1999-08-21","30000", "80","Programmer"),
(103, "priyanka3", "kulkarni3", "p.k3@gmail.com","32345","1999-08-21","40000", "80","Programmer"),
(104, "priyanka4", "kulkarni4", "p.k4@gmail.com","42345","1999-08-21","50000", "80","Programmer"),
(105, "priyanka5", "kulkarni5", "p.k5@gmail.com","52345","1999-08-21","80000", "80","Programmer"),
(106, "priyanka6", "kulkarni6", "p.k6@gmail.com","62345","1999-08-21","60000", "80","Programmer"),
(107, "priyanka7", "kulkarni7", "p.k7@gmail.com","14345","1999-08-21","20000", "80","Programmer"),
(108, "priyanka8", "kulkarni8", "p.k8@gmail.com","18445","1999-08-21","60000", "80","Programmer"),
(109, "priyanka9", "kulkarni9", "p.k9@gmail.com","15545","1999-08-21","40000", "80","Programmer"),
(110, "priyanka10", "kulkarni10", "p.k10@gmail.com","98345","1999-08-21","90000", "80","Programmer"),
(111, "priyanka11", "kulkarni11", "p.k11@gmail.com","16545","1999-08-21","70000", "80","Programmer"),
(112, "sachit", "claire", "s.c@gmail.com","125445","1999-08-21","20000", "70","hr"),
(113, "sachit1", "claire1", "s.c1@gmail.com","15555","1999-08-21","20000", "70","hr"),
(114, "sachit2", "claire2", "s.c2@gmail.com","33345","1999-08-21","20000", "70","hr"),
(115, "sachit3", "claire3", "s.c3@gmail.com","12255","1999-08-21","20000", "70","hr"),
(116, "sachit4", "claire4", "s.c4@gmail.com","11235","1999-08-21","20000", "70","hr"),
(117, "rahul", "rathi", "r.r@gmail.com","18945","1999-08-21","40000", "90","Admin"),
(118, "rahul1", "rathi1", "r.r1@gmail.com","11145","1999-08-21","60000", "90","Admin"),
(119, "rahul2", "rathi2", "r.r2@gmail.com","17775","1999-08-21","50000", "90","Admin");
select * from Employeees;
select * from Departments;
select Employeees.First_Name,Employeees.Last_name,Employeees.Dept_Id, Departments.Dept_Name from Departments
inner join Employeees on Departments.Dept_Id = Employeees.Dept_Id ;
select Dept_Name, count(*) as "num of employees" from Departments 
inner join Employeees on Departments.Dept_Id = Employeees.Dept_Id  group by Dept_name;
select Dept_Name, avg(Salary)  from  Departments, Employeees  
 where Departments.Dept_Id = Employeees.Dept_Id group by Dept_Name;
 select  Max(Salary) as MaxSalProgrammer from Employeees where Job_Title="Programmer" ;
 select avg(Salary), count(*) from Employeees where Dept_Id=90;
 select Job_Title,count(*) from Employeees group by Job_Title;
 select max(Salary) - min(Salary) diffrence from Employeees;
 select Job_Title, Avg(Salary) from Employeees where Job_Title <> "Programmer" group by Job_Title;
 select Job_Title, Avg(Salary) from Employeees group by Dept_Id having count(*) > 10;
 