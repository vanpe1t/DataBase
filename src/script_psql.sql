create database skypro;
create table employee (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL ,
    last_name VARCHAR(50) NOT NULL ,
    gender VARCHAR(6) NOT NULL ,
    age INT NOT NULL
);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Makarov', 'Maxim', 'male', 43);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Ivanov', 'Ivan', 'male', 20);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Petrova', 'Kate', 'female', 33);
SELECT * FROM employee;
UPDATE employee SET age = 32 WHERE first_name = 'Petrova' and
                                   last_name = 'Kate';
SELECT * FROM employee;
DELETE FROM employee WHERE first_name = 'Petrova';
SELECT * FROM employee;
