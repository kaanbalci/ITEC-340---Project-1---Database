CREATE TABLE Product
(	
	ProdNo INTEGER,
	ProdName VARCHAR(50),
	ProdSupplier CHAR(30),
	CONSTRAINT PKProduct Primary KEY (ProdNo),
);
 
 
CREATE TABLE PriceHistory
(
	VersionNo INTEGER,
	BegEffDate DATE,
	EndEffDate DATE,
	Prodprice DECIMAL(8,4),
	PriceHistory INTEGER NOT NULL,
	CONSTRAINT PKProduct Primary KEY (VersionNo)
);
 


   CREATE TABLE Office
( 
	OfficeID    	CHAR(10),
	Address     	VARCHAR(40),
	ManagerName	VARCHAR(50),
        PhoneNumber	INTEGER(20),
        CONSTANT PKOffice PRIMARY KEY (OfficeID),
);

CREATE TABLE UsedBy
(
    	OfficeID       CHAR(20),
    	VersionNo     INTEGER,
	CONSTANT PKUsedBy PRIMARY KEY (VersionNo),
	CONSTANT FKVersionNo FOREIGN KEY (VersionNo) REFERENCES OfficeUsage,
	CONSTANT FKOfficeID FOREIGN KEY (OfficeID) REFERENCES Office
);

CREATE TABLE OfficeUsage
(
    	VersionNo     INTEGER,
    	BegEffDate    Date,
    	EndEffDate    Date,
	CONSTANT PKOfficeUsage PRIMARY KEY (VersionNo)
);

CREATE TABLE Uses
(
    	AgentID		CHAR(30),
    	VersionNo	INTEGER,
	CONSTANT PKUses PRIMARY KEY (VersionNo),
	CONSTANT FKVersionNo FOREIGN KEY (VersionNo) REFERENCES OfficeUsage,
	CONSTANT FKAgentID FOREIGN KEY (AgentID) REFERENCES Agent
);


CREATE TABLE Agent
(
	AgentID      CHAR(20),
    	Name         VARCHAR(30),
    	Phone          INTEGER(20),
	CONSTANT PKAgent PRIMARY KEY (AgentID )
);


 CREATE TABLE Material
 (
    	MatNo     INTEGER ,
    	MatName    VARCHAR(50),
	CONSTANT Material PRIMARY KEY (MatNo )
);

CREATE TABLE MaterialUsed
(
    	WorkOrderNo INTEGER,
    	EstQty     INTEGER ,
    	ActQty    INTEGER,
    	MatNo     INTEGER,        
	CONSTANT MatUsed PRIMARY KEY (WorkOrderNo, MatNo),
);

CREATE TABLE WorkOder
(   
	Address         VARCHAR(30),
    	WorkOrderNo     INTEGER ,
    	CreateDate         DATE,
    	ReqDate            DATE,
	CONSTANT Material PRIMARY KEY (WorkOrderNo)
);