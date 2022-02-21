create database StudentManagement;
use studentmanagement;
create table class (
classID int not null AUTO_INCREMENT primary key,
classname VARCHAR(60) NOT NULL,
stardate datetime not null,
status bit
);

create table students (
studentID int auto_increment primary key not null,
studentname varchar(30) not null,
address varchar(30), 
phone varchar(20),
status bit,
classID int not null
);

create table subjects (
subjectID int not null auto_increment primary key,
subname varchar(50) not null,
credit tinyint not null default 1 check (credit >= 1),
status bit default 1
);

create table mark (
markID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
subID INT NOT NULL UNIQUE,
studentID  INT NOT NULL UNIQUE,
mark FLOAT DEFAULT 0 CHECK (MARK BETWEEN 0 AND 100),
examtimeS TINYINT DEFAULT 1,
FOREIGN KEY (SUBID) REFERENCES subjects(subjectID),
FOREIGN KEY (STUDENTID) REFERENCES STUDENTS(STUDENTID)
);

