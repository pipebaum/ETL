CREATE TABLE rescodes (
                CODE VARCHAR(6) NOT NULL,
                DESCRIPTION TEXT,
                Abnormal VARCHAR(2),
                TEST VARCHAR(6),
                UpdateDate DATE,
                Updatetime TIME,
                PRIMARY KEY (CODE)
);


CREATE TABLE profile (
                ID VARCHAR(6) NOT NULL,
                PROCEDR VARCHAR(6) NOT NULL,
                PRINT_SEQ INT,
                UpdateDate DATE,
                UpdateTime TIME,
                PRIMARY KEY (ID, PROCEDR)
);


CREATE TABLE procedur (
                ALPHA VARCHAR(6) NOT NULL,
                STATUS INT,
                DESCR VARCHAR(120),
                TYPE CHAR(1),
                UNITS VARCHAR(10),
                TURN_AROUND VARCHAR(10),
                SPECIMEN VARCHAR(10),
                UpdateDate DATE NOT NULL,
                UpdateTime TIME NOT NULL,
                PRIMARY KEY (ALPHA)
);


CREATE TABLE patient (
                ID INT NOT NULL,
                HISPatientID VARCHAR(20),
                Status CHAR(1),
                LNAME VARCHAR(40),
                FNAME VARCHAR(40),
                MNAME VARCHAR(40),
                STREET VARCHAR(120),
                Street1 VARCHAR(120),
                Street2 VARCHAR(120),
                CITY VARCHAR(40),
                STATE VARCHAR(40),
                ZIP VARCHAR(20),
                DOB DATETIME,
                SEX VARCHAR(2),
                Race VARCHAR(6),
                PhoneNum VARCHAR(20),
                S_FNAME VARCHAR(15),
                S_LNAME VARCHAR(15),
                SS_FNAME VARCHAR(15),
                SS_LNAME VARCHAR(15),
                RELATION VARCHAR(2),
                S_RELATION VARCHAR(2),
                PRIM_INS VARCHAR(5),
                PRIM_INS_NUM VARCHAR(20),
                PRI_INS_GRP VARCHAR(20),
                SEC_INS VARCHAR(5),
                SEC_INS_NUM VARCHAR(20),
                SEC_INS_GRP VARCHAR(20),
                SSN VARCHAR(20),
                HeadofFamily INT,
                UpdateDate DATE NOT NULL,
                UpdateTime TIME NOT NULL,
                PRIMARY KEY (ID)
);


CREATE TABLE insuranc (
                CODE VARCHAR(5) NOT NULL,
                NAME VARCHAR(120),
                UpdateDate DATE NOT NULL,
                UpdateTime TIME NOT NULL,
                PRIMARY KEY (CODE)
);


CREATE TABLE facility (
                ID VARCHAR(10) NOT NULL,
                NAME VARCHAR(120),
                ADDRESS VARCHAR(120),
                CITY VARCHAR(40),
                STATE VARCHAR(20),
                ZIP VARCHAR(20),
                PhoneNum VARCHAR(20),
                SendResultsFaxNbr VARCHAR(20),
                SalesRepresentative INT,
                UpdateDate TIME NOT NULL,
                UpdateTime DATE NOT NULL,
                PRIMARY KEY (ID)
);


CREATE TABLE doctors (
                ID VARCHAR(10) NOT NULL,
                NAME VARCHAR(120),
                CLIN_ABBR VARCHAR(10),
                STREET VARCHAR(120),
                CITY VARCHAR(40),
                STATE VARCHAR(20),
                ZIP VARCHAR(20),
                PhoneNum VARCHAR(20),
                FAX VARCHAR(20),
                UpdateDate DATE NOT NULL,
                UpdateTime TIME NOT NULL,
                PRIMARY KEY (ID)
);


CREATE TABLE encountr (
                NUMBER INT NOT NULL,
                PATIENT INT,
                DATE DATETIME,
                TIME DATETIME,
                EncounterScheduleDat DATETIME,
                EncounterScheduleTim DATETIME,
                STATUS INT,
                INSURANCE VARCHAR(5),
                DOCTOR VARCHAR(10),
                DIAG VARCHAR(10),
                DIAG2 VARCHAR(10),
                DIAG3 VARCHAR(10),
                DIAG4 VARCHAR(10),
                REQUESTED_DT DATETIME,
                REQUESTED_TI DATETIME,
                OrderingFacility VARCHAR(10),
                CreateDate DATETIME,
                CreateTime INT,
                CreatedBy CHAR(1),
                UpdateDate DATE,
                UpdateTime TIME,
                PRIMARY KEY (NUMBER)
);


CREATE TABLE orders (
                RES_ALPHA VARCHAR(20) NOT NULL,
                RES_NUM DECIMAL(52) NOT NULL,
                PROCEDR VARCHAR(6),
                NOTES TEXT,
                ENCOUNTER INT,
                PROFILE VARCHAR(6),
                STATUS CHAR(1),
                RESULTTYPE CHAR(1),
                TEST_DATE DATETIME,
                POST_TIME DATETIME,
                TEST_STATUS CHAR(1),
                STAT INT,
                Reportable INT,
                UpdateDate DATE,
                UpdateTime TIME,
                PRIMARY KEY (RES_ALPHA, RES_NUM, ENCOUNTER, PROCEDR)
);


CREATE TABLE encordr (
                PROCEDR VARCHAR(6) NOT NULL,
                ENCOUNTER INT NOT NULL,
                CREATED_BY CHAR(1) NOT NULL,
                STATUS CHAR(1),
                STAT INT,
                Specimen VARCHAR(2),
                UpdateDate DATE,
                UpdateTime TIME,
                PRIMARY KEY (PROCEDR, ENCOUNTER, CREATED_BY)
);
