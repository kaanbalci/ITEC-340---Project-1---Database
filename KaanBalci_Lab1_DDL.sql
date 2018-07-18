-- Lab 1 - DDL Exercise
-- Kaan Balci

-- Problem 1
CREATE TABLE Customer 
 (   CustNo		CHAR(8),
     CustFirstName	VARCHAR(50) CONSTRAINT CustFirstNameRequired NOT NULL,
     CustLastName	VARCHAR(50) CONSTRAINT CustLastNameRequired NOT NULL,
     CustCity		VARCHAR(50),
     CustState		CHAR(2),
     CustZip		CHAR(10),
     CustBal		DECIMAL(10,2),
CONSTRAINT PKCustomer PRIMARY KEY (CustNo)  )

-- Problem 5
CREATE TABLE OrderTbl 
 (   OrdNo 		CHAR(8),
     OrdDate		DATE CONTSTRAINT OrdDateRequired NOT NULL,
     CustNo 		CHAR(8),
     EmpNo		CHAR(8),
CONSTRAINT PKOrderTbl PRIMARY KEY (OrdNo),
CONSTRAINT FKCustNo FOREIGN KEY (CustNo) REFERENCES Customer
     ON DELETE RESTRICT
     ON UPDATE RESTRICT,
CONSTRAINT FKEmpNo FOREIGN KEY (EmpNo) REFERENCES Employee   
     ON DELETE RESTRICT
     ON UPDATE RESTRICT     )


-- Problem 6
CREATE TABLE OrderTbl2 
 (   OrdNo 		CHAR(8),
     OrdDate		DATE    CONTSTRAINT OrdDateRequired NOT NULL,
     CustNo 		CHAR(8) CONSTRAINT CustNoRequired NOT NULL,
     EmpNo		CHAR(8),
CONSTRAINT PKOrderTbl PRIMARY KEY (OrdNo),
CONSTRAINT FKCustNo FOREIGN KEY (CustNo) REFERENCES Customer
     ON DELETE RESTRICT
     ON UPDATE RESTRICT,
CONSTRAINT FKEmpNo FOREIGN KEY (EmpNo) REFERENCES Employee
     ON DELETE RESTIRCT
     ON UPDATE RESTRICT      )


-- Problem 7
CREATE TABLE Employee 
 (   EmpNo		CHAR(8),
     EmpFirstName 	VARCHAR(50),
     EmpLastName	VARCHAR(50),
     EmpPhone		CHAR(13),
     EmpEmail		CHAR(50),
CONSTRAINT PKEmpNo PRIMARY KEY (EmpNo),
CONSTRAINT UniqueEmpEmail UNIQUE (EmpEmail)     ) 
