DROP TABLE IF EXISTS `Employee`;

CREATE TABLE `Employee`
(
    Id INTEGER NOT NULL,
    Name varchar(32) NOT NULL,
    Salary INTEGER NOT NULL,
    DepartmentId INTEGER NOT NULL,
    PRIMARY KEY (Id)
);

INSERT INTO `Employee`(Id, Name, Salary, DepartmentId)
VALUES (1, 'Joe', 70000, 1),
       (2, 'Henry', 80000, 2),
       (3, 'Sam', 60000, 2),
       (4, 'Max', 90000, 1);

DROP TABLE IF EXISTS `Department`;

CREATE TABLE `Department`
(
    Id INTEGER NOT NULL,
    Name varchar(32) NOT NULL,
    PRIMARY KEY (Id)
);

INSERT INTO `Department`
VALUES (1, 'IT'),
       (2, 'Sales');

SELECT (SELECT Name FROM department AS P2 WHERE P1.DepartmentId=P2.Id )AS Department, Name AS Employee, MAX(Salary) AS Salary
FROM Employee AS P1
GROUP BY DepartmentId
