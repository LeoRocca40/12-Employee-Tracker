DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;

USE employee_tracker;

CREATE TABLE Department(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL,
);

CREATE TABLE Department_Role(
  id INT NOT NULL,
  role_title VARCHAR(30) NOT NULL,
  salary DECIMAL,
  department_id INT NOT NULL,
  FOREIGN KEY (department_id) REFERENCES Department(id)
  PRIMARY KEY (id)
);

CREATE TABLE Employee(
  id INT NOT NULL,
  manager_id INT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
FOREIGN KEY (role_id) REFERENCES Department_Role(id)
FOREIGN KEY (manager_id) REFERENCES Employee(id)
PRIMARY KEY (id)
);
