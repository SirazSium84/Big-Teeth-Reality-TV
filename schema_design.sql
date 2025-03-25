CREATE TABLE Contestants(
    Contestant_ID INT PRIMARY KEY,
    Name VARCHAR (40),
    Address VARCHAR (100),
    City VARCHAR (20),
    State VARCHAR (20),
    Postal_Code INT,
    Country VARCHAR (30),
    Day_Time_Phone VARCHAR (20),
    Night_Time_Phone VARCHAR (20),
    Email VARCHAR (40),
    Date_of_Birth DATE,
    Gender VARCHAR (10),
    Candidate_Essay TEXT (4000),
    Photo VARCHAR (100),
    Video_ID VARCHAR (20),
    Producer_Rating INT,
    Director_Rating INT    
);



CREATE TABLE Jobs(
    Job_ID INT PRIMARY KEY,
    Contestant_ID INT,
    Job_Title VARCHAR (40),
    Start_Date DATE,
    End_Date DATE,
    Job_Description TEXT (4000)
);


ALTER TABLE Jobs
ADD FOREIGN KEY (Contestant_ID)
REFERENCES Contestants(Contestant_ID)
ON DELETE SET NULL;



CREATE TABLE Medications(
    Medication_ID INT PRIMARY KEY,
    Contestant_ID INT,
    Name_of_the_Medicine VARCHAR (40),
    Medical_Reason TEXT (4000)
);


ALTER TABLE Medications
ADD FOREIGN KEY (Contestant_ID)
REFERENCES Contestants(Contestant_ID)
ON DELETE SET NULL;


CREATE TABLE Background_Checks(
    BackGround_Check_ID INT PRIMARY KEY,
    Contestant_ID INT,
    National_ID TEXT (30),
    Religion TEXT (20),
    Appearance_Rating INT,
    Strength_Rating INT
);


ALTER TABLE Background_Checks
ADD FOREIGN KEY (Contestant_ID)
REFERENCES Contestants(Contestant_ID)
ON DELETE SET NULL;


CREATE TABLE Employer(
    Employer_ID INT PRIMARY KEY,
    BackGround_Check_ID INT,
    Employer_Name VARCHAR (40),
    Phone VARCHAR(20)
);


ALTER TABLE Employer
ADD FOREIGN KEY (BackGround_Check_ID)
REFERENCES BackGround_Checks(BackGround_Check_ID)
ON DELETE SET NULL;


CREATE TABLE Education(
    Education_ID INT PRIMARY KEY,
    BackGround_Check_ID INT,
    Instituition_Name VARCHAR(40),
    Contact_Number VARCHAR(20),
    Degree VARCHAR (40) 
);


ALTER TABLE Education
ADD FOREIGN KEY (BackGround_Check_ID)
REFERENCES BackGround_Checks(BackGround_Check_ID)
ON DELETE SET NULL;


CREATE TABLE Police_Records(
    Police_Record_ID INT PRIMARY KEY,
    Background_Check_ID INT,
    Date DATE,
    Category VARCHAR(40),
    Description TEXT(4000),
    Outcome TEXT (1000),
    FOREIGN KEY (Background_Check_ID) 
    REFERENCES Background_Checks (Background_Check_ID) 
    ON DELETE CASCADE
);

CREATE TABLE Episodes(
    Episode_Title VARCHAR (40),
    Air_Date DATE UNIQUE,
    Producer VARCHAR (40),
    Director VARCHAR (40),
    PRIMARY KEY (Episode_Title)
);

CREATE TABLE Events(
    Event_Title VARCHAR(40),
    Episode_Title VARCHAR (40),
    PRIMARY KEY (Event_Title,Episode_Title),
    FOREIGN KEY (Episode_Title) REFERENCES Episodes (Episode_Title) ON DELETE CASCADE
);




CREATE TABLE Tasks(
    Task_ID INT,
    Event_Title VARCHAR(40),
    IsGroupTask BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (Task_ID),
    FOREIGN KEY (Event_Title) REFERENCES Events (Event_Title) ON DELETE CASCADE
);


CREATE TABLE Action_Sequence(
    Sequence_ID INT,
    Task_ID INT,
    Description TEXT (4000),
    Cameras VARCHAR(20),
    Estimated_Danger INT,
    Estimated_Time TIME,
    PRIMARY KEY (Sequence_ID),
    FOREIGN KEY (Task_ID) REFERENCES Tasks (Task_ID) ON DELETE SET NULL
);

CREATE TABLE Contestants_Tasks(
    Task_ID INT,
    Contestant_ID INT,
    Result VARCHAR (40),
    Points INT,
    Prize VARCHAR (40),
    PRIMARY KEY(Task_ID, Contestant_ID),
    FOREIGN KEY (Task_ID) REFERENCES Tasks (Task_ID) ON DELETE CASCADE,
    FOREIGN KEY (Contestant_ID) REFERENCES Contestants (Contestant_ID) ON DELETE CASCADE
);




CREATE TABLE Votes (
    Vote_ID INT,
    Episode_Title VARCHAR(40),
    Air_Date DATE,
    Contestant_ID INT,
    Region VARCHAR(40),
    Method VARCHAR(40),
    PRIMARY KEY (Vote_ID),
    FOREIGN KEY (Episode_Title) REFERENCES Episodes (episode_title) ON DELETE SET NULL,
    FOREIGN KEY (Air_Date) REFERENCES Episodes (air_date) ON DELETE SET NULL,
    FOREIGN KEY (Contestant_ID) REFERENCES Contestants (contestant_id) ON DELETE SET NULL
);