# netflix-data-analysis-sql
Exploratory data analysis of Netflix movies and TV shows using PostgreSQL, focusing on content distribution, ratings, release trends, directors, durations, and keyword-based categorization.
# Netflix Data Analysis Using SQL

## 📌 Project Overview

This project explores a Netflix dataset using **PostgreSQL** to analyze movies and TV shows, identify content trends, and extract insights through SQL queries.

The analysis covers content distribution, ratings, release years, movie durations, TV show seasons, directors, and keyword-based categorization of content descriptions.

## 🎯 Objectives

- Compare the number of movies and TV shows available on Netflix.
- Identify the most common content ratings.
- Retrieve movies released in a specific year.
- Analyze the years with the highest number of movie releases.
- Explore movie durations and TV show season distributions.
- Identify directors with the most titles in the dataset.
- Filter documentary content.
- Search for content featuring a specific actor.
- Categorize titles based on keywords in their descriptions.

## 🛠️ Tools & Technologies

- **Database:** PostgreSQL
- **Language:** SQL
- **Analysis:** Aggregations, filtering, grouping, sorting, pattern matching, subqueries, and conditional expressions.
- **Functions:** `COUNT()`, `GROUP BY`, `ORDER BY`, `LIMIT`, `CASE`, `ILIKE`, `EXTRACT()`

## 📊 Key Findings

Based on the generated query results:

- **6,131 movies** and **2,676 TV shows** were recorded.
- **TV-MA** was the most frequent rating in the reported rating distribution, with 3,207 entries.
- **2018** had the highest count in the reported top 10 release-year results, with 1,147 titles.
- **90 minutes** was the most frequent movie duration in the reported duration results, with 152 movies.
- **One season** was the most common TV show duration, with 1,793 shows.
- **Rajiv Chilaka** appeared among the most frequently listed directors, with 19 titles.
- A keyword-based classification identified 8,465 titles as `NON-VOILENCE` and 342 as `VOILENCE`, using the original labels in the SQL query.

*Note: These findings reflect the supplied query outputs and their original labels. Some queries may require refinement to ensure that the results match their intended analytical questions.*

## 🔍 SQL Analysis Performed

### 1. Movies vs. TV Shows
Counted the number of titles in each content type.

### 2. Content Ratings
Identified the most common rating using aggregation and sorting.

### 3. Movies Released in a Specific Year
Filtered titles released in 2020.

### 4. Top 10 Release Years
Counted titles by release year and returned the years with the highest counts.

### 5. Country Information
Explored distinct country values in the dataset.

### 6. Movie Duration
Retrieved movie titles and durations, sorted by duration.

### 7. Recent Release-Year Distribution
Examined the ten most recent release years present in the data.

### 8. Most Common Movie Durations
Counted movies by duration to identify frequently occurring runtimes.

### 9. Directors by Number of Titles
Ranked directors by the number of titles associated with them.

### 10. TV Show Seasons
Analyzed the distribution of TV shows by number of seasons.

### 11. Documentaries
Filtered titles categorized as documentaries.

### 12. Actor-Based Analysis
Searched for titles featuring Salman Khan and applied a release-year filter.

### 13. Keyword-Based Content Categorization
Used a `CASE` expression to categorize descriptions containing the words "kill" or "violence".

## 📁 Repository Structure

```text
netflix-data-analysis-sql/
│
├── NETFLIX_SQL.sql
├── NETFLIX_RESULT.pdf
└── README.md
```

## 🚀 How to Run the Project

1. Install PostgreSQL and open a PostgreSQL-compatible SQL editor.
2. Create or connect to a database containing the Netflix dataset.
3. Create the `netflix` table using the schema in `NETFLIX_SQL.sql`.
4. Import the dataset into the table.
5. Execute the SQL queries to reproduce the analysis.
6. Compare the output with `NETFLIX_RESULT.pdf`.

**Note:** The supplied SQL file defines the table schema but does not include the original dataset or a complete import procedure. The dataset must be imported separately before running the analysis.

## 📚 Skills Demonstrated

- SQL-based data exploration
- Data aggregation and summarization
- Filtering and sorting records
- Grouping and ranking data
- Pattern matching with `ILIKE`
- Conditional categorization using `CASE`
- Working with structured datasets in PostgreSQL

## 👨‍💻 Author

Created as a SQL and data analytics project to practice querying, exploring, and extracting insights from a real-world entertainment dataset.
