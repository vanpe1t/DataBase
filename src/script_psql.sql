create database skypro;
create table employee (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL ,
    last_name VARCHAR(50) NOT NULL ,
    gender VARCHAR(6) NOT NULL ,
    age INT NOT NULL
);
INSERT INTO employee (last_name, first_name, gender, age)
VALUES ('Makarov', 'Maxim', 'male', 43);
INSERT INTO employee (last_name, first_name, gender, age)
VALUES ('Ivanov', 'Ivan', 'male', 20);
INSERT INTO employee (last_name, first_name, gender, age)
VALUES ('Petrova', 'Kate', 'female', 33);
SELECT * FROM employee;
UPDATE employee SET age = 32 WHERE last_name = 'Petrova' and
        first_name = 'Kate';
SELECT * FROM employee;
DELETE FROM employee WHERE last_name = 'Petrova';
SELECT * FROM employee;

--Task 1
--1.1
INSERT INTO employee (last_name, first_name, gender, age)
VALUES ('Petrova', 'Kate', 'female', 33);
INSERT INTO employee (last_name, first_name, gender, age)
VALUES ('Pupkin', 'Vasisliy', 'male', 40);
INSERT INTO employee (last_name, first_name, gender, age)
VALUES ('Vinogradov', 'Alex', 'male', 60);
--1.2
SELECT
    first_name AS Имя,
    last_name AS Фамилия
FROM employee;
--1.3
SELECT
    *
FROM employee
WHERE age < 30 OR age > 50;
--1.4
SELECT
    *
FROM employee
WHERE age BETWEEN 30 AND 50;
--1.5
SELECT
    *
FROM employee
ORDER BY last_name DESC;
--1.6
SELECT
    *
FROM employee
WHERE char_length(first_name) > 4;
--Task2
--2.1
UPDATE employee SET first_name = 'Ivan' WHERE first_name = 'Maxim';
UPDATE employee SET first_name = 'Alex' WHERE first_name = 'Vasisliy';
--2.2
SELECT
    SUM(age) AS Суммареый_возраст,
    first_name AS Имя
FROM employee
GROUP BY
    first_name;
--2.3
SELECT
    MIN(age) AS Минимальный_возраст,
    first_name AS Имя
FROM employee
GROUP BY
    first_name;
--2.4
SELECT
    MAX(age) AS Максимальный_возраст,
    first_name AS Имя
FROM employee
GROUP BY
    first_name HAVING COUNT(1) > 1
ORDER BY
    Максимальный_возраст


