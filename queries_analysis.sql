--1
SELECT
    AVG(c.Producer_Rating) AS Avg_Producer_Rating,
    AVG(c.Director_Rating) AS Avg_Director_Rating
FROM
    Contestants_Tasks ct
JOIN
    Contestants c ON ct.Contestant_ID = c.Contestant_ID
JOIN
    Tasks t ON ct.Task_ID = t.Task_ID
JOIN
    Events e ON t.Event_Title = e.Event_Title
WHERE
    e.Event_Title = 1
    AND t.IsGroupTask = TRUE;


--2
SELECT *
FROM
    Action_Sequence a
ORDER BY
    a.Estimated_Time DESC;







--3
SELECT
    c.Contestant_ID,
    c.Name,
    v.Region,
    v.Method,
    COUNT(c.Contestant_ID) AS Total_Votes
FROM
    Contestants c
JOIN
    Votes v ON c.Contestant_ID = v.Contestant_ID
WHERE
    v.Episode_Title = 'Episode 1'
GROUP BY
    c.Contestant_ID, v.Region, v.Method
ORDER BY
    Total_Votes DESC, Region ASC;


--4
SELECT
    c.Contestant_ID,
    c.Name
FROM
    Contestants c
LEFT JOIN
    Contestants_Tasks ct ON c.Contestant_ID = ct.Contestant_ID
WHERE
    ct.Contestant_ID IS NULL;


--5
SELECT
    MAX(af.Estimated_Danger) AS Highest_Estimated_Danger
FROM
    Action_Sequence af
JOIN
    Tasks t ON af.Task_ID = t.Task_ID
JOIN
    Events e ON t.Event_Title = e.Event_Title;
