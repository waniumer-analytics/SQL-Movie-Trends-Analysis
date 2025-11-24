                                                                        Movie-Insights-Using-SQL
                                                                        
                                                              Entertainment / Movie Industry Analytics   
                                                              
"End-to-end movie analytics using MySQL — from relational modeling to advanced SQL (CTEs, window functions, stored procedures). Analyze profits, ROI, star power, collaborations, industries, and more."

<img width="1024" height="1024" alt="movie" src="https://github.com/user-attachments/assets/72fa0133-d612-4adb-bc7b-345f1f7d0506" />

                                                              About the Project

This project explores a multi-table movie dataset containing movies, actors, languages, financials, and movie–actor mapping.
The goal was to build a strong SQL portfolio project demonstrating:

1. Relational database design
2. ERD understanding
3. Foreign keys & constraints
4. SQL querying (Basic → Intermediate → Advanced)
5. Stored procedures
6. CTEs, window functions, subqueries
7. Financial calculations (revenue normalization, ROI, profitability, etc.)

                                                             Dataset Overview

This project uses 5 CSV files:

1. actors.csv
2. movies.csv
3. movie actor.csv
4. language.csv
5. financials.csv
        
                                                             How to Run the Project
   
##  Create a database

CREATE DATABASE movie_db;
USE movie_db;

##  Import schema

mysql -u root -p movie_db < sql/schema.sql

##  Load CSV files

Example:

LOAD DATA LOCAL INFILE 'data/movies.csv'
INTO TABLE movies
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 ROWS;


                                                       The project includes 15 structured SQL tasks
                                                       

Basic 

1. Show actors born after 1980.
2. Count movies by industry.
3. List all languages.
4. Show budget & revenue for each movie.

 Intermediate 
 
1. Movies with language names.
2. Top 5 highest-rated movies.
3. Actors per movie using GROUP_CONCAT.
4. Profit calculation (also rewritten using stored procedure).
5. Movies after 2015 where revenue > budget.

 Advanced 

1. Actor with most movies.
2. Total revenue by industry.
3. Movies above industry avg IMDb rating.
4. Highest ROI movie.
5. Full movie summary report using CTEs.
  
1. Actor with highest total box-office revenue

2. Top 3 actors by average IMDb rating

3. Profitability buckets using CASE

4. ROI by language

5. Profit margin leaders

6. Star power score (CTE)

7. Actor collaboration network

8. Franchise-based revenue groups

9. Year-wise revenue ranking (window functions)

10. Revenue deviation from industry average


                                                                 What I Learned From This Project

 1.  How to structure SQL queries for analysis
2.  How to normalize financial data with inconsistent units
3.  Managing a many-to-many relationship using a bridge table
4.  Using window functions, CTEs, subqueries, and stored procedures
5.  How to think like a movie-analytics team (profitability, ROI, star power)

                                                                         Who This Project Is For

1.  Data analysts
2. SQL learners
3.  BI developers
4.  Anyone creating portfolio projects



                                                                                     AUTHOR

WANI UMER
LINKEDIN:- www.linkedin.com/in/waniumer-analytics 
