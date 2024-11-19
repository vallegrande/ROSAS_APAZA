
 USE ROSAS_APAZA;


insert into student ( names, last_names , email , birtday ) values 
('jose', 'Gonsalez', 'jose@gmail.com', '2010-03-21'),
('carlos', 'rodriguez', 'carlos@gmail.com', '2014-03-21'),
('maria', 'sanchez', 'maria@gmail.com', '2018-03-21'),
('luis', 'garcia', 'luis@gmail.com', '2015-03-21'),
('roberto', 'chumpitaz', 'roberto@gmail.com', '2005-03-21');

insert into teachers( names, last_names , email , phone, speality ) values 
('jose', 'Gonsalez', 'jose@gmail.com',  '999999999', 'matematica'),
('carlos', 'rodriguez', 'carlos@gmail.com', '999994999', 'ciencias'),
('maria', 'sanchez', 'maria@gmail.com', '999799999', 'arte'),
('luis', 'garcia', 'luis@gmail.com',  '999994999', 'fisica'),
('roberto', 'chumpitaz', 'roberto@gmail.com',  '991999999', 'comunicacio');

insert into seller(code,  names, last_names , email , palce, salary ) values 
('0001','jose', 'Gonsalez', 'jose@gmail.com',  'san luis', '1000.00'),
('0002','carlos', 'rodriguez', 'carlos@gmail.com', 'san vicente', '2000.00'),
('0003','maria', 'sanchez', 'maria@gmail.com', 'inperial', '3000.00'),
('0004','luis', 'garcia', 'luis@gmail.com',  'quilmana', '4000.00'),
('0005','roberto', 'chumpitaz', 'roberto@gmail.com',  'mala', '5000.00');

insert into course(code, names,credits  ) values 
('0001','ciencias', 85 ),
('0002','matematicas', 90 ),
('0003','comunicacion', 100 ),
('0004','arte', 70 ),
('0005','fisica', 40 );

insert into campus (code, name, direction, place) values

('0001', 'sucursal 1','calle comercio', 'san luis'),
('0002', 'sucursal 2','calle 33', 'san vicente'),
('0003', 'sucursal 3','calle 28 julio', 'imperial'),
('0004', 'sucursal 4','calle 2 mayo', 'cerro azul'),
('0005', 'sucursal 5','calle ayacucho', 'mala');



insert into careers(names, descriptions, durations)values
('amalisis', 'carrera de analisis',3),
('derecho', 'carrera de derecho',3),
('agraria', 'carrera de agraria',3),
('psicologia', 'carrera de psicologia',3),
('medicina', 'carrera de medicina',3);

insert into careers_detail(fk_careers_id,fk_course_code,fk_teachers_id)values
(1,'0001',3),
(2,'0002',3),
(3,'0003',3),
(4,'0004',3),
(5,'0005',3);


insert into enrollment(price, start_date, fk_student_id,fk_careers_id,fk_campus_code,fk_seller_code)values
(120.00,'2010-03-21', 1,1, '0001', '0001'),
(130.00,'2010-04-21', 2,2, '0005', '0004'),
(140.00,'2010-05-21', 3,3, '0002', '0003'),
(150.00,'2010-06-21', 4,4, '0003', '0002'),
(160.00,'2010-07-21', 5,5, '0004', '0001');


select * from enrollment