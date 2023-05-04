/*
--------------------------------------------------------------------
© 2023 Joshua Ondieki All Rights Reserved
--------------------------------------------------------------------
Name   : HR
Link   : https://github.com/JoshuaOndieki/sql-joins
Version: 1.0
--------------------------------------------------------------------
*/

USE HR

-- ADD DATA INTO EMPLOYEES TABLE
INSERT INTO hr.employees(first_name, last_name) VALUES ('Jonathan', 'Ndambuki')
INSERT INTO hr.employees(first_name, last_name) VALUES ('Joshua', 'Ondieki')
INSERT INTO hr.employees(first_name, last_name) VALUES ('Eve', 'Candy')
INSERT INTO hr.employees(first_name, last_name) VALUES ('John', 'Doe')
INSERT INTO hr.employees(first_name, last_name) VALUES ('Jane', 'Doe')
INSERT INTO hr.employees(first_name, last_name) VALUES ('Ayew', 'Yiu')
INSERT INTO hr.employees(first_name, last_name) VALUES ('Ghost', 'Worker') --this worker won't have an address

-- SET MANAGERS FOR SOME EMPLOYEES
UPDATE hr.employees
SET
manager_id = 1  -- sets Jonathan as Joshua's manager
WHERE
first_name = 'Joshua';

UPDATE hr.employees
SET
manager_id = 2 -- sets Joshua as Eve's manager
WHERE
first_name = 'Eve';

UPDATE hr.employees
SET
manager_id = 3 --sets Eve as manager of john, jane, and ayew
WHERE
employee_id > 3 AND employee_id < 7;

-- ADD DATA INTO ADDRESSES
INSERT INTO hr.addresses (street, city, country, employee_id) VALUES ('KDS', 'Nyeri', 'Kenya', 1)
INSERT INTO hr.addresses (street, city, country, employee_id) VALUES ('Skuta', 'Nyeri', 'Kenya', 2)
INSERT INTO hr.addresses (street, city, country, employee_id) VALUES ('Skuta', 'Nyeri', 'Kenya', 3)
INSERT INTO hr.addresses (street, city, country, employee_id) VALUES ('254', 'Nairobi', 'Kenya', 4)
INSERT INTO hr.addresses (street, city, country, employee_id) VALUES ('254', 'Nairobi', 'Kenya', 5)
INSERT INTO hr.addresses (street, city, country, employee_id) VALUES ('254', 'Garissa', 'Kenya', 6)
INSERT INTO hr.addresses (street, city, country) VALUES ('Kremlin', 'Moscow', 'Russia') --this address doesn't have an employee relation
