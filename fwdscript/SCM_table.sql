DROP TABLE term_rec;
DROP TABLE teacher;
DROP TABLE student;
DROP TABLE class;
DROP TABLE guardian;

CREATE TABLE guardian
(
gid number(3) primary key,
gname varchar2(25) not null,
gaddress varchar2(35),
gOccupation varchar2(15),
gphone varchar2(15) not null
);

CREATE TABLE student
(
sid number(3) primary key,
sname varchar2(25) not null,
sdob date not null,
sgender char(1) not null,
gid number(3) not null references guardian(gid)
);

CREATE TABLE class
(
cid number(3) primary key,
cname varchar2(15) not null
);
CREATE TABLE teacher
(
tid number(3) primary key,
tname varchar2(20) not null,
taddress varchar2(25),
tphone varchar2(15) not null
);

CREATE TABLE term_rec
(
termid number(3) primary key,
start_date date not null,
finish_date date not null,
cid number(3) not null references class(cid),
sid number(3) not null references student(sid),
tid number(3) not null references teacher(tid)
);
