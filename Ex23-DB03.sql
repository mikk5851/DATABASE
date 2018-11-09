CREATE TABLE PET_OWNER (
	OwnerID			Int					NOT NULL, 
	OwnerLastName	Char(25)			NOT NULL,
	OwnerFirstName	Char(25)			NOT NULL,
	OwnerPhone		Char(10)			NOT NULL,
	OwnerEmail		VarChar(100)		NOT NULL UNIQUE,
	CONSTRAINT		PET_OWNER_PK		PRIMARY KEY(OwnerID),
	);

CREATE TABLE PET (
	PetID			Int					NOT NULL,
	PetName			Char(25)			NOT NULL,
	PetType			Char(25)			NOT NULL,
	PetBreed		Char(32)			NOT NULL,
	PetDOB			VarChar(10)			NOT NULL,
	PetWeight		Float				NOT NULL,
	OwnerID			int					NOT NULL,
	CONSTRAINT		PET_PK				PRIMARY KEY(PetID),
	CONSTRAINT		OWNER_ID_FK			FOREIGN KEY(OwnerID)
						REFERENCES		PET_OWNER(OwnerID)					     
	);

CREATE TABLE INVOICE (
	InvoiceNumber	int					NOT NULL,
	InvoiceDate		date				NOT NULL,
	SubTotal	
	);