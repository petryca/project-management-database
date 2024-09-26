-- Drop the tables in the reverse order of their dependencies
DROP TABLE IF EXISTS Work_log;
DROP TABLE IF EXISTS Status_log;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Status;
DROP TABLE IF EXISTS Project;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Role;
DROP TABLE IF EXISTS Position;
DROP TABLE IF EXISTS Department;

-- Create the Department table
CREATE TABLE Department (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Create the Position table
CREATE TABLE Position (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200)
);

-- Create the Employee table
CREATE TABLE Employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    position_id INT REFERENCES Position(id),
    department_id INT REFERENCES Department(id)
);

-- Create the Role table
CREATE TABLE Role (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200)
);

-- Create the Project table
CREATE TABLE Project (
    id SERIAL PRIMARY KEY,
    title TEXT
);

-- Create the Status table
CREATE TABLE Status (
    id SERIAL PRIMARY KEY,
    "desc" VARCHAR(200)
);

-- Create the Team table
CREATE TABLE Team (
    employee_id INT REFERENCES Employee(id),
    project_id INT REFERENCES Project(id),
    role_id INT REFERENCES Role(id),
    PRIMARY KEY (employee_id, project_id)
);

-- Create the Status_log table
CREATE TABLE Status_log (
    id SERIAL PRIMARY KEY,
    status_id INT REFERENCES Status(id),
    project_id INT REFERENCES Project(id),
    timestmp TIMESTAMP
);

-- Create the Work_log table
CREATE TABLE Work_log (
    id SERIAL PRIMARY KEY,
    "desc" TEXT,
    project_id INT REFERENCES Project(id),
    employee_id INT REFERENCES Employee(id),
    timestmp TIMESTAMP,
    period INTERVAL
);