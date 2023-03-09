-- SQL to create tables
CREATE TABLE "PATIENTDATA"
(
"PATIENT_ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
"FNAME" VARCHAR(50),   
"LNAME" VARCHAR(50),
"PPSN" VARCHAR (10),

"DOB" VARCHAR(50),
"EMAIL" VARCHAR(50), 
"TELEPHONE" INT,  
"PASSWORD" VARCHAR(50), 
"USERTYPE" VARCHAR(10)
);



CREATE TABLE "OPTICIANDATA"
(
"OPTICIAN_ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
"PANEL_NO" VARCHAR(50), 
"NAME" VARCHAR(50),   
"ADDRESS" VARCHAR(50),
"TELEPHONE" VARCHAR (10),
"EMAIL" VARCHAR(50)
);

CREATE TABLE "ADMINDATA"
(
"ADMIN_ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
"PASSWORD" VARCHAR(50),   
"FNAME" VARCHAR(50),   
"LNAME" VARCHAR(50), 
"ADDRESS" VARCHAR(50),
"TELEPHONE" VARCHAR (10),
"EMAIL" VARCHAR(50), 
"USERTYPE" VARCHAR(10)

);



CREATE TABLE "APPLICATIONDATA"
(
"APPLICATION_ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
"DATE" VARCHAR(50),   
"FNAME" VARCHAR(50),
"LNAME" VARCHAR(50),   
"DOB" VARCHAR(50), 
"PPSN" VARCHAR(50),   
"MEDNO" VARCHAR(50),
"EXPIRY" VARCHAR(50),   
"PHONE" VARCHAR(50), 
"ADDRESS" VARCHAR(50), 
"EXAMINATION" VARCHAR(50),   
"EXAMDATE" VARCHAR(50),
"OPTICIAN" VARCHAR(50),   


"PATIENT_ID" INT,

constraint PATIENT_IDFK FOREIGN KEY (PATIENT_ID) REFERENCES PATIENTDATA(PATIENT_ID)


);

CREATE TABLE "STATUSDATA"
(
"STATUS_ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
   
"CRITERIA" VARCHAR(50),   
"STATUS" BOOLEAN, 
"ADMIN_ID" INT,
"APPLICATION_ID" INT,

constraint APPLICATION_IDFK FOREIGN KEY (APPLICATION_ID) REFERENCES APPLICATIONDATA(APPLICATION_ID),
constraint ADMIN_IDFK FOREIGN KEY (ADMIN_ID) REFERENCES ADMINDATA(ADMIN_ID)

);

CREATE TABLE "CLAIMDATA"
(
"CLAIM_ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
 
"STATUS" VARCHAR(10), 
"PRESCRIPTION" VARCHAR(50),  
"GLASSES_REQUIRED" VARCHAR(50), 
"LENSES" VARCHAR(50), 
"COMMENTS" VARCHAR(1000),
"DATE" VARCHAR(50),
"EXAMINER" VARCHAR(50),
"DETAILS" VARCHAR(10000),
"OPTICIAN_ID"  VARCHAR(1000),   
"PPSN"  VARCHAR(1000), 
"ADMIN_ID"  VARCHAR(1000)


);

CREATE TABLE "TREATMENTDATA"
(
"TREATMENT_ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
 
"DATE" VARCHAR(50),
"DETAILS" VARCHAR (10),

"OPTICIAN_ID" INT, 
"PATIENT_ID" INT,  
"STATUS_ID" INT, 
constraint OPTICIAN_IDFK3 FOREIGN KEY (OPTICIAN_ID) REFERENCES OPTICIANDATA(OPTICIAN_ID),
constraint PATIENT_IDFK3 FOREIGN KEY (PATIENT_ID) REFERENCES PATIENTDATA(PATIENT_ID),
constraint STATUS_IDFK3 FOREIGN KEY (STATUS_ID) REFERENCES STATUSDATA(STATUS_ID)
);

-- SQL to create tables
CREATE TABLE "QUERYDATA"
(
"QUERY_ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
"PPSN" VARCHAR(50),   
"SUBJECT" VARCHAR(1000),
"QUESTION" VARCHAR (10000),

"ANSWER" VARCHAR(50),
"STATUS" VARCHAR(10000)

);
CREATE TABLE "CLAIMDATA"
(
"CLAIM_ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
 
"STATUS" VARCHAR(10), 
"PRESCRIPTION" VARCHAR(50),  
"GLASSES_REQUIRED" VARCHAR(50), 
"LENSES" VARCHAR(50), 
"COMMENTS" VARCHAR(1000),
"DATE" VARCHAR(50),
"EXAMINER" VARCHAR(50),
"DETAILS" VARCHAR(10000),
"OPTICIAN_ID"  VARCHAR(1000),   
"PPSN"  VARCHAR(1000), 
"ADMIN_ID"  VARCHAR(1000)

);