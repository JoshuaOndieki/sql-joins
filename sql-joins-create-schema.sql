/*
--------------------------------------------------------------------
© 2023 Joshua Ondieki All Rights Reserved
--------------------------------------------------------------------
Name   : HR
Link   : https://github.com/JoshuaOndieki/sql-joins
Version: 1.0
--------------------------------------------------------------------
*/
-- create schemas
CREATE SCHEMA hr;
go


-- create tables
CREATE TABLE hr.employees (
	employee_id INT IDENTITY (1, 1) PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	manager_id INT NULL REFERENCES hr.employees (employee_id)
);

CREATE TABLE hr.addresses (
	address_id INT IDENTITY (1, 1) PRIMARY KEY,
	street VARCHAR (255) NOT NULL,
	city VARCHAR (255) NOT NULL,
	country VARCHAR (255) NOT NULL,
	employee_id INT NULL,
	FOREIGN KEY (employee_id) REFERENCES hr.employees (employee_id) ON DELETE SET NULL ON UPDATE NO ACTION
)
