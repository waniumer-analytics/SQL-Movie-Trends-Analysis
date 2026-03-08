

                                         Movie Industry Analytics Using SQL

                                    Domain: Entertainment / Movie Industry Analytics.

<img width="1536" height="1024" alt="THUMBNAIL" src="https://github.com/user-attachments/assets/be1d5739-2987-4469-bf1f-dc618bc83a63" />

                                           TOOLS USED.
1. MySQL
2. Relational Database Design.
3.  SQL (CTEs, Window Functions, Stored Procedures).

-> This project analyzes movie industry data using SQL to understand financial performance, actor influence, and industry trends.

-> The analysis integrates multiple relational datasets to explore profitability, revenue distribution, star power, and collaboration patterns** within the film industry.

                                                        Business Problem

-> Movie production involves high financial risk. Studios must decide:

* which actors to cast
* how much budget to allocate
* which markets and languages perform best
* which movies generate the highest returns

-> This project uses SQL-based analysis to answer questions such as:

* Which movies generate the highest ROI?
* Which actors contribute the most to box-office revenue?
* How profitable are movies across industries?
* How does revenue vary across languages and industries?

                                                       Dataset Overview

-> The dataset contains Five relational tables representing different components of the movie ecosystem.

| Table       | Description                                                      |
| ----------- | ---------------------------------------------------------------- |
| movies      | Movie metadata (title, release year, industry, rating, language) |
| actors      | Actor information (name, birth year)                             |
| movie_actor | Many-to-many relationship between movies and actors              |
| financials  | Budget, revenue, currency, and financial units                   |
| languages   | Language metadata                                                |

This structure enables multi-dimensional analysis across financial, industry, and actor perspectives.



                                             Database Schema (Conceptual Model)

-> The dataset follows a relational structure:-

Actors
   │
movie_actor
   │
Movies ─── Financials
   │
Languages

-> The movie_actor bridge table resolves the many-to-many relationship between movies and actors.



                                               Analysis Workflow

-> The SQL analysis was structured in three stages.

1. Data Exploration.
->  Initial queries were used to understand dataset structure and distribution:

* listing movies and ratings.
* identifying actors and demographics
* analyzing movie counts by industry

 2. Financial Analysis
-> Financial data required **unit normalization** because budgets and revenues were stored in both millions and billions.

-> Normalization allowed accurate calculations of:

* movie profits
* return on investment (ROI)
* industry revenue distribution

 3. Advanced Analytical Queries
-> Advanced SQL techniques were used to generate deeper insights:

* CTEs for complex aggregations.
* window functions for ranking and trend analysis.
* stored procedures for reusable calculations.
* actor collaboration network analysis.
* franchise-based revenue grouping.

                                                          Key Insights

1. Movie Revenue Is Highly Concentrated
-> A small number of blockbuster films generate the majority of industry revenue.
-> This highlights the blockbuster-driven nature of the movie industry.

 2. Movie Profitability Varies Significantly.
-> Profit bucket analysis shows movies fall into several categories:

* loss-making films
* low-profit films
* medium-profit films
* high-profit blockbusters

This confirms that film production is a high-risk investment business.

 3. Actor Participation Influences Box Office Revenue
-> Actors appearing in multiple successful movies contribute significantly to total box-office revenue.
This supports the concept of “star power” in film casting decisions.

4. High IMDb Ratings Do Not Always Guarantee High Revenue.
-> Some critically acclaimed films generate modest revenue, while commercially successful films may not always receive the highest ratings.
This suggests commercial success and audience ratings do not always align.

 5. Industry Revenue Differences
-> Revenue aggregation reveals significant differences between film industries such as **Hollywood and Bollywood**, driven by budget sizes and global distribution.



                                                          Business Recommendations

Based on the analysis, studios could consider the following strategies:

1. Invest in Franchise Development
-> Franchise-based movies show strong revenue performance. Studios should prioritize sequels and recurring storylines.

2. Use Data-Driven Casting.
-> Actors with strong historical box-office revenue may increase the probability of commercial success.

3. Optimize Production Budgets.
-> Profitability analysis suggests many films operate close to break-even, highlighting the need for **budget efficiency**.

4. Expand Global Distribution.
-> Movies released in widely spoken languages have larger potential audiences and higher revenue opportunities.


                                                        SQL Techniques Demonstrated

This project demonstrates practical SQL skills including:

1.  complex joins.
2.  aggregation queries
3.  subqueries.
4.  CASE statements
5.  Common Table Expressions (CTEs)
6.  window functions
7.  stored procedures
8.  financial calculations



                                                              Key Analytical Queries

Examples of analytical problems solved:

1. Identify actors with the highest total box-office revenue.
2. Rank movies by revenue within each year.
3. Compute ROI for each movie.
4. Identify movies outperforming industry averages.
5. Build actor collaboration networks.Detect high-performing franchises.



                                                             Future Improvements

Potential extensions for this project include:
1. genre-based profitability analysis.
2. predictive box-office modeling.
3. sentiment analysis of movie reviews.
4. streaming platform revenue analysis



                                                             Author

.WANI UMER
. Data Analyst.

LinkedIn :- [www.linkedin.com/in/waniumer-analytics].
Portfolio:- 
