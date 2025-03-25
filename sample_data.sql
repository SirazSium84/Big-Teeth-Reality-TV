INSERT INTO Contestants (Contestant_ID, Name, Address, City, State, Postal_Code, Country, Day_Time_Phone, Night_Time_Phone, Email, Date_of_Birth, Gender, Candidate_Essay, Photo, Video_ID, Producer_Rating, Director_Rating)
VALUES
    (1, 'Candidate 1', '123 Main St', 'Cityville', 'CA', 12345, 'USA', 1234567890, 987654321, 'candidate1@email.com', '1990-01-01', 'Male', 'Essay 1', 'photo1.jpg', 'video1', 4, 3),
    (2, 'Candidate 2', '456 Oak St', 'Townsville', 'NY', 56789, 'USA', 9876543210, 123456789, 'candidate2@email.com', '1992-03-15', 'Female', 'Essay 2', 'photo2.jpg', 'video2', 5, 4),
    (3, 'Candidate 3', '789 Pine St', 'Villagetown', 'TX', 101112, 'USA', 4567890123, 234567890, 'candidate3@email.com', '1988-05-20', 'Male', 'Essay 3', 'photo3.jpg', 'video3', 3, 5),
    (4, 'Candidate 4', '101 Elm St', 'Hamletsville', 'FL', 131415, 'USA', 3456789012, 345678901, 'candidate4@email.com', '1995-07-10', 'Female', 'Essay 4', 'photo4.jpg', 'video4', 2, 2),
    (5, 'Candidate 5', '202 Birch St', 'Ruraltown', 'IL', 161718, 'USA', 2345678901, 456789012, 'candidate5@email.com', '1993-09-25', 'Male', 'Essay 5', 'photo5.jpg', 'video5', 4, 4);

-- Insert data into Jobs
INSERT INTO Jobs (Job_ID, Contestant_ID, Job_Title, Start_Date, End_Date, Job_Description)
VALUES
    (1, 1, 'Software Developer', '2022-01-01', '2022-12-31', 'Developing software applications'),
    (2, 2, 'Graphic Designer', '2022-03-01', '2022-11-30', 'Creating visual concepts'),
    (3, 3, 'Data Analyst', '2022-02-15', '2022-10-15', 'Analyzing and interpreting complex data sets'),
    (4, 4, 'Customer Support Representative', '2022-04-01', '2022-09-30', 'Assisting customers with product-related inquiries'),
    (5, 5, 'Marketing Specialist', '2022-05-15', '2022-08-31', 'Planning and executing marketing strategies');


-- Insert data into Medications
INSERT INTO Medications (Medication_ID, Contestant_ID, Name_of_the_Medicine, Medical_Reason)
VALUES
    (1, 1, 'Medicine A', 'Treatment for cold'),
    (2, 2, 'Medicine B', 'Allergy relief'),
    (3, 3, 'Medicine C', 'Pain management'),
    (4, 4, 'Medicine D', 'Digestive health'),
    (5, 5, 'Medicine E', 'Vitamin supplement');

-- Insert data into Background_Checks
INSERT INTO Background_Checks (BackGround_Check_ID, Contestant_ID, National_ID, Religion, Appearance_Rating, Strength_Rating)
VALUES
    (1, 1, '123-45-6789', 'Christian', 8, 9),
    (2, 2, '987-65-4321', 'Jewish', 7, 8),
    (3, 3, '456-78-9012', 'Muslim', 9, 7),
    (4, 4, '321-09-8765', 'Buddhist', 6, 6),
    (5, 5, '789-01-2345', 'Hindu', 8, 9);

-- Insert data into Employers
INSERT INTO Employer (Employer_ID, BackGround_Check_ID, Employer_Name, Phone)
VALUES
    (1, 1, 'Tech Corp', 1234567890),
    (2, 2, 'Design Studio', 2345678901),
    (3, 3, 'Data Analytics Inc', 3456789012),
    (4, 4, 'Customer Support Co', 4567890123),
    (5, 5, 'Marketing Agency', 5678901234);

-- Insert data into Education
INSERT INTO Education (Education_ID, BackGround_Check_ID, Instituition_Name, Contact_Number, Degree)
VALUES
    (1, 1, 'University A', 1112223333, 'Computer Science'),
    (2, 2, 'Art Institute', 2223334444, 'Graphic Design'),
    (3, 3, 'Data University', 3334445555, 'Data Science'),
    (4, 4, 'Customer Service College', 4445556666, 'Customer Service Management'),
    (5, 5, 'Marketing School', 5556667777, 'Marketing');

-- Insert data into Police_Records
INSERT INTO Police_Records (Police_Record_ID, Background_Check_ID, Date, Category, Description, Outcome)
VALUES
    (1, 1, '2022-01-05', 'Traffic Violation', 'Speeding ticket', 'Warning'),
    (2, 2, '2022-02-10', 'Public Disturbance', 'Loud music complaint', 'Fined'),
    (3, 3, '2022-03-15', 'Theft', 'Stolen bicycle', 'Under Investigation'),
    (4, 4, '2022-04-20', 'Disturbing the Peace', 'Loud argument', 'Verbal warning'),
    (5, 5, '2022-05-25', 'Vandalism', 'Graffiti on public property', 'Community Service');


-- Insert data into Episodes
INSERT INTO Episodes (Episode_Title, Air_Date, Producer, Director)
VALUES
    ('Episode 1', '2022-01-15', 'Producer A', 'Director X'),
    ('Episode 2', '2022-02-01', 'Producer B', 'Director Y'),
    ('Episode 3', '2022-02-15', 'Producer C', 'Director Z');

-- Insert data into Events
INSERT INTO Events (Event_Title, Episode_Title)
VALUES
    (1, 'Episode 1'),
    (2, 'Episode 1'),
    (3, 'Episode 2');

-- Insert data into Tasks for Events
INSERT INTO Tasks (Task_ID, Event_Title, IsGroupTask)
VALUES
    (1, 1, TRUE),
    (2, 2, FALSE),
    (3, 3, TRUE);


-- Insert data into Action_Sequence for Events
INSERT INTO Action_Sequence (Sequence_ID, Task_ID, Description, Cameras, Estimated_Danger, Estimated_Time)
VALUES
    (1, 1, 'Team Task Action', 'Camera 1', 7, '02:30:00'),
    (2, 2, 'Individual Task Action', 'Camera 2', 5, '01:30:00'),
    (3, 3, 'Team Task Action', 'Camera 3', 8, '03:00:00'),
    (4, 2, 'Individual Task Action', 'Camera 4', 6, '02:00:00'),
    (5, 2, 'Individual Task Action', 'Camera 5', 4, '01:00:00');





-- Insert data into Contestants_Tasks for contestants who have participated
INSERT INTO Contestants_Tasks (Task_ID, Contestant_ID, Result, Points, Prize)
VALUES
    (1, 1, 'Completed', 10, 'Winner'),
    (1, 2, 'Completed', 8, 'Winner'),
    (2, 1, 'Completed', 9, 'Third place'),
    (3, 2, 'Completed', 7, 'Runner-up'),
    (3, 3, 'Completed', 8, 'Runner-up');

-- Insert data into Votes
INSERT INTO Votes (Vote_ID, Episode_Title, Air_Date, Contestant_ID, Region, Method)
VALUES
    (1, 'Episode 1', '2022-01-15', 1, 'Region 1', 'Online'),
    (2, 'Episode 1', '2022-01-15', 2, 'Region 2', 'Phone'),
    (3, 'Episode 1', '2022-01-15', 1, 'Region 1', 'Online'),
    (4, 'Episode 1', '2022-02-01', 2, 'Region 2', 'Online'),
    (5, 'Episode 1', '2022-02-01', 2, 'Region 1', 'Phone'),
    (6, 'Episode 2', '2022-02-01', 3, 'Region 2', 'Online'),
    (7, 'Episode 2', '2022-02-01', 4, 'Region 1', 'Online'),
    (8, 'Episode 2', '2022-02-01', 5, 'Region 2', 'Phone');
