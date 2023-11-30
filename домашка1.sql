CREATE TABLE groupes(
name_g VARCHAR(50) default("groupes"),
rating INT,
course INT
);

INSERT INTO groupes(name_g, rating, course)
VALUES("Лида", 10, 1);

SELECT name_g, rating, course FROM groupes;

-- CREATE database QAtest
