--Employee table
create table Employee(EmpID varchar(20),Fname varchar(20) not null,Lname varchar(20) not null,Email varchar(20),Title varchar(20) not null,passwd varchar(20) not null,Phone numeric(10),primary key(EmpID,Email,Phone));

--Organisation table
create table Organisation(Name varchar(20) not null,FuncID varchar(20),TeamID varchar(20),EmpID varchar(20),foreign key(EmpID) references Employee(EmpID),primary key(FuncID,TeamID));

--Layer table
create table Layer(EmpID varchar(20),LayerID varchar(20) not null,Dim1 int(1) default null,Dim2 int(1) default null,Dim3 int(1) default null,Dim4 int(1) default null,Dim5 int(1) default null,Dim6 int(1) default null,Dim7 int(1) default null,Dim8 int(1) default null,Dim9 int(1) default null,LayerAvg double(5,3),foreign key(EmpID) references Employee(EmpID));

--Score table
create table Score(ScoreID int(5),EmpID varchar(20),foreign key(EmpID) references Employee(EmpID),Average double(5,3),primary key(ScoreID));