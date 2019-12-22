--Employee table
create table Employee(EmpID varchar(20),Fname varchar(20) not null,Lname varchar(20) not null,Email varchar(20),Title varchar(20) not null,passwd varchar(20) not null,Phone numeric(10),primary key(EmpID,Email,Phone));

--Organisation table
create table Organisation(Name varchar(20) not null,FuncID varchar(20),TeamID varchar(20),EmpID varchar(20),foreign key(EmpID) references Employee(EmpID),primary key(FuncID,TeamID));

--Layer table
create table Layer(EmpID varchar(20),LayerID varchar(20) not null,Dim1 int default 0,Dim2 int default 0,Dim3 int default 0,Dim4 int default 0,Dim5 int default 0,Dim6 int default 0,Dim7 int default 0,Dim8 int default 0,Dim9 int default 0,LayerAvg double(5,3),foreign key(EmpID) references Employee(EmpID));

--Score table
create table Score(ScoreID int(5),EmpID varchar(20),foreign key(EmpID) references Employee(EmpID),Average double(5,3),primary key(ScoreID));

