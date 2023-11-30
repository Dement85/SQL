create table groupes1(
id_gr int primary key auto_increment,
name_g varchar(50),
rating INT,
course INT
);
INSERT INTO groupes1(name_g, rating, course)
VALUES("Лида", 10, 1);
INSERT INTO groupes1(name_g, rating, course)
VALUES("Матвей", 11, 1);
INSERT INTO groupes1(name_g, rating, course)
VALUES("Никита", 9, 1);

select name_g, rating, course FROM groupes;
