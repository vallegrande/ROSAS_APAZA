-- Crear base de datos
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ROSAS_APAZA')
BEGIN
    DROP DATABASE ROSAS_APAZA;  -- Eliminar la base de datos si existe
END

CREATE DATABASE ROSAS_APAZA;  -- Crear la nueva base de datos
GO  -- Asegúrate de que la instrucción anterior se complete antes de continuar

USE ROSAS_APAZA;-- Usar la nueva base de datos


CREATE TABLE student 
(
id int  not null identity (1, 1),
names  varchar (150) not null,
last_names varchar(150) not null,
email varchar(150) not null,
register_date  DATETIME NOT NULL DEFAULT GETDATE(),
birtday date not null,
Status CHAR(1) NOT NULL DEFAULT 'A',
CONSTRAINT studentID_pk PRIMARY KEY (id)
);
GO

CREATE TABLE careers 
(
id int not null IDENTITY(1,1),
names varchar (150),
descriptions VARCHAR(2500),
durations int,
register_date  DATETIME NOT NULL DEFAULT GETDATE(),
Status CHAR(1) NOT NULL DEFAULT 'A',
CONSTRAINT careersID_pk PRIMARY KEY (id)
);
GO

create table seller 
(
code char(4),
names  varchar (150) not null,
last_names varchar(150) not null,
email varchar(150) not null,
register_date  DATETIME NOT NULL DEFAULT GETDATE(),
palce varchar(150) not null,
salary decimal (8,1) not null,
Status CHAR(1) NOT NULL DEFAULT 'A',
CONSTRAINT sellerID_pk PRIMARY KEY (code)
)
GO

create table course 
(
code char(4)not null,
names varchar(150) not null,
credits int not null,
Status CHAR(1) NOT NULL DEFAULT 'A',
CONSTRAINT courseID_pk PRIMARY KEY (code)
)

GO

create table teachers 

(
id int not null identity(1,1),
names  varchar (150) not null,
last_names varchar(150) not null,
email varchar(150) not null,
register_date  DATETIME NOT NULL DEFAULT GETDATE(),
phone char(9) not null,
speality varchar(120) not null,
Status CHAR(1) NOT NULL DEFAULT 'A',
CONSTRAINT teachersID_pk PRIMARY KEY (id)
)
GO

create table campus 
(
code char(4) not null,
register_date  DATETIME NOT NULL DEFAULT GETDATE(),
name varchar(100 ) not null,
direction varchar(150) not null,
place varchar(150),
Status CHAR(1) NOT NULL DEFAULT 'A',
CONSTRAINT campusID_pk PRIMARY KEY (code)
)

create table careers_detail
(
id int not null identity(1,1),
fk_careers_id int,
fk_course_code char(4),
fk_teachers_id int
CONSTRAINT careers_detail_course FOREIGN KEY (fk_course_code) REFERENCES course (code),
CONSTRAINT careers_detail_careers FOREIGN KEY (fk_careers_id) REFERENCES careers (id),
CONSTRAINT careers_detail_teachers FOREIGN KEY (fk_teachers_id) REFERENCES teachers (id),
);

create table enrollment 
(
id int not null identity(1,1),
register_date  DATETIME NOT NULL DEFAULT GETDATE(),
price decimal(8,2) not null,
start_date date not null,
Status CHAR(1) NOT NULL DEFAULT 'A',
fk_student_id int,
fk_careers_id int,
fk_campus_code char(4),
fk_seller_code char(4)
CONSTRAINT enrollment_student FOREIGN KEY (fk_student_id) REFERENCES student (id),
CONSTRAINT enrollment_careers FOREIGN KEY (fk_careers_id) REFERENCES careers (id),
CONSTRAINT enrollment_campus FOREIGN KEY (fk_campus_code) REFERENCES campus (code),
CONSTRAINT enrollment_seller FOREIGN KEY (fk_seller_code) REFERENCES seller (code)
)


