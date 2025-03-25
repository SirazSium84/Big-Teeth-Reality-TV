# **📺 Reality TV Show Database**  

This project delivers a **comprehensive relational database** designed to manage all aspects of a reality TV show. From contestant profiles and background checks to episode production, voting data, and performance tracking, this database ensures efficient data management, integrity, and scalability.  

---

## **📌 Project Overview**  

This database is built to handle the **complex structure of a reality TV show**, enabling seamless tracking of:  
✅ **Contestants** – Personal details, background checks, and employment history.  
✅ **Show Structure** – Episodes, events, tasks, and action sequences.  
✅ **Voting System** – Viewer participation, vote counts, and regional breakdowns.  
✅ **Performance Analysis** – Task participation, ratings, and contestant progress.  

The project includes **SQL scripts** for:  
- **Schema Definition** – Tables, relationships, and constraints.  
- **Data Integrity** – Foreign keys, constraints, and indexing.  
- **Query Execution** – Sample SQL queries for performance insights and analysis.  

---

## **🚀 Key Features**  

🔹 **Contestant Management** – Stores detailed profiles, medical records, background checks, and employment history.  
🔹 **Dynamic Show Structure** – Organizes episodes, events, tasks, and action sequences with relational links.  
🔹 **Robust Voting System** – Tracks votes by region and voting method for accurate audience engagement metrics.  
🔹 **Performance & Task Tracking** – Logs contestant participation, task results, and ratings from producers and directors.  

---

## **📊 Database Schema**  

The database is structured into multiple tables to **ensure data normalization and efficiency**:  

### **📁 Contestant Information**  
- **`Contestants`** – Stores contestant profiles and key details.  
- **`Jobs`** – Records contestants’ employment history.  
- **`Medications`** – Tracks medical records.  
- **`Background_Checks`** – Logs security and background verification details.  

### **📺 Show Structure**  
- **`Episodes`** – Defines individual show episodes.  
- **`Events`** – Captures major happenings within episodes.  
- **`Tasks`** – Lists assigned challenges and activities.  
- **`Action_Sequence`** – Orders actions within tasks for structured storytelling.  

### **🗳️ Voting System**  
- **`Votes`** – Stores voting data, including contestant, episode, and voting method details.  

### **🎭 Performance & Engagement**  
- **`Contestants_Tasks`** – Tracks contestant participation in tasks, linking them to task performance metrics.  

---

## **📌 Sample SQL Queries**  

This project includes several **predefined SQL queries** to extract insights from the database:  

1️⃣ **Calculate average producer and director ratings for group tasks**  
```sql
SELECT Task_Name, AVG(Producer_Rating) AS Avg_Producer_Rating, AVG(Director_Rating) AS Avg_Director_Rating
FROM Tasks
GROUP BY Task_Name;
```  

2️⃣ **Order action sequences by estimated time**  
```sql
SELECT Task_Name, Action_Description, Estimated_Time 
FROM Action_Sequence 
ORDER BY Estimated_Time DESC;
```  

3️⃣ **Analyze voting patterns for contestants in specific episodes**  
```sql
SELECT Contestant_ID, COUNT(*) AS Total_Votes, Episode_ID 
FROM Votes 
GROUP BY Contestant_ID, Episode_ID 
ORDER BY Total_Votes DESC;
```  

4️⃣ **Identify contestants who haven’t participated in any tasks**  
```sql
SELECT Name FROM Contestants 
WHERE Contestant_ID NOT IN (SELECT DISTINCT Contestant_ID FROM Contestants_Tasks);
```  

5️⃣ **Find the highest estimated danger level across all action sequences**  
```sql
SELECT MAX(Danger_Level) AS Highest_Danger_Level FROM Action_Sequence;
```  

---

## **💡 Why This Database Matters?**  

✅ **Data Integrity & Consistency** – Implements foreign keys and constraints to prevent data inconsistencies.  
✅ **Optimized for Analysis** – Enables deep insights into contestant performance, voting trends, and show structure.  
✅ **Scalable & Extensible** – Easily adaptable for additional features like viewer comments, sponsorship tracking, and audience engagement metrics.  

---

## **📈 Future Enhancements**  

🔹 **Improve indexing for faster query performance**  
🔹 **Add stored procedures for automated contestant ranking**  
🔹 **Introduce triggers for real-time event updates**  
🔹 **Develop a front-end dashboard for visualizing contestant progress and voting trends**  

---

## **📢 Contribute & Connect**  

👋 Want to contribute? Feel free to fork this repository, submit pull requests, or suggest enhancements!  
⭐ **If you find this project useful, give it a star!** 🚀  

---
