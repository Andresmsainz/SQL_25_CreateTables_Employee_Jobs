DROP TABLE Employees
CREATE TABLE Employees
(
	EmployeeID int NOT NULL UNIQUE,
	FirstName varchar(150) NOT NULL,
	LastName varchar(150) NOT NULL,
	Gender varchar(10) CHECK (Gender in ('Male', 'Female')),
	Country varchar(100),
	DOB date,
	MobileNumber varchar(20),
	EmailAddress varchar(150),
	Remarks varchar(MAX)
)

DROP TABLE Jobs
CREATE TABLE Jobs
(
	JobID int NOT NULL UNIQUE,
	JobTitle varchar(50) NOT NULL,
	JobMinSalary decimal(9,2) DEFAULT 1000,
	JobMaxSalary decimal(9,2) DEFAULT 10000,
	IsManagerial bit DEFAULT 0,
	Remarks varchar(MAX)
)