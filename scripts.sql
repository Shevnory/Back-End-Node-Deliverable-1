
insert into users (
	first_name, 
	last_name,
	email,
	"password",
	course_id,
	age
) values (
	'Gerardo',
	'Vega',
	'gerardo@email.com',
	'root',
	'7',
	'26'
), (
	'Ruben',
	'fernadez',
	'rfernadez@email.com',
	'1234',
	'8',
	'20'
), (
	'Fernando',
	'Vega',
	'fernado@email.com',
	'root',
	'9',
	'21'
);

insert into categorys (
	"name" 
) values (
	'javascript'
), (
	'react'
), (
	'node Js'
);

insert into courses (
	title,
	description,
	level_id,
	teacher_id,
	video_id,
	category_id
) values (
	'Primeros pasos en Javascript',
	'lorem',
	'1',
	'1',
	'1',
	'1'
), (
	'Desarrollo de aplicaciones web en react',
	'lorem',
	'2',
	'2',
	'2',
	'2'
), (
	'Desarrollo de API en node JS',
	'lorem',
	'3',
	'3',
	'2',
	'3'
);

insert into teachers (
	first_name,
	last_name,
	course_id 
) values (
	'Yair',
	'Lopez',
	'1'
),(
	'David',
	'Perez',
	'2'
),(
	'Julio',
	'Miranda',
	'3'
);


insert into level (
	"name" 
) values (
	'Beginner'
), (
	'Intermediate'
), (
	'Advanced'
);


insert into course_videos (
	title,
	url,
	course_id
) values (
	'Tipos de datos en javascript',
	'random/url.com',
	'1'
), (
	'Ciclos en javascript',
	'random/url.com',
	'1'
), (
	'Primera app con react',
	'random/url.com',
	'2'
), (
	'UseEffect',
	'random/url.com',
	'2'
), (
	'Base de DAtos',
	'random/url.com',
	'3'
), (
	'Metodos HTTP',
	'random/url.com',
	'3'
);


select users.first_name, users.last_name, courses.title  from users join courses on users.course_id = courses.id;
select courses.title, teachers.first_name, teachers.last_name from courses join teachers on courses.teacher_id  = teachers.id ;
select courses.title, level.name  from courses join level on courses.level_id = level.id ;