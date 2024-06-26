--Lesson One:       Introduction
   --In this lesson, we will be learning different SQL commands to query a single table in a database.
   --SEQUEL(Structured English QUEry Language)
   --Instructions:
      --Query: we select all columns from the table movies
         SELECT * FROM movies;
      --expected result: retries all entries and columns from the table movies.
      -- Columns include id, name, genre, year, and imdb_rating.

--Lesson Two:       Select
   SELECT SOMETHING FROM table_name;
      -- SELECT is used every time you want to query from a database.
      -- SOMETHING represents either everthing in the table (with an asterisk *) or the columns that
      --  you want to query (column1, column2).
   --Instructions:
      --1st Query: We want to select only the name and genre columns of the table.
         SELECT name, genre
            FROM movies;
      --expected result: Returns the name and genre column from the table and every entry is returned.
      --2nd Query: Edit the query to return the name, genre, and year columns from the same table.
         SELECT name, genre, year
            FROM movies;
      --expected result: Returns the name, genre, and year columns from the table.

--Lesson Three:     As
   SELECT SOMETHING AS 'CustomName' FROM table_name;
      --The AS keyword in SQL allows you to rename a column or table using an alias.
      -- The alias can be anything as long and it is imporant to distinguish the column
      -- in the table is not actually renamed, it is only shown in the results.
   --Instructions:
      --1st Query: Select the name column and rename it with an alias.
         SELECT name AS 'NewAlias'
            FROM movies;
      --expected result: Returns the name column from the movies table renamed to NewAlias
      --2nd Query: Select the imdb_rating column and rename it as IMDb.
         SELECT imdb_rating AS 'IMDb'
            FROM movies;
      --expected result: Returns the imdb_rating column from the movies table and renamed as 'IMDb'.

--Lesson Four:      Distinct
   SELECT DISTINCT tools FROM inventory;
   --DISTINCT is used to return unique values in the output and as a result
   -- filters out all duplicate values in the specified column(s).
   --Instructions:
      --1st Query: Select the distinct genres in the movies table.
         SELECT DISTINCT genres
            FROM movies;
      --expected result: Returns a the list of genres with all the duplicates removed.
      --2nd Query: Select the unique values of the year column.
         SELECT DISTINCT year
            FROM movies;
      --expected result: Returns a distinct list of years that are in the database.

--Lesson Five:      Where
   SELECT SOMETHING FROM table_name WHERE CONDITION;
   --The WHERE clause filters the result set to only include rows where the following CONDITION is true.
   --Comparisons that can be used in the where clause are as follows: =, !=, >, <, >=, and <=.
   --Instructions:
      --1st Query: Select the movies with a 5 or lower rating.
         SELECT * FROM movies
            WHERE imdb_rating < 5;
      --expected result: Returns all information for the movies where the imdb rating is lower than 5.
      --2nd Query: Now retrieve all the movies that were released after 2014.
         SELECT * FROM movies
            WHERE year > 2014;
      --expected result: Returns all the information for movies released after 2014.

--Lesson Six:       Like 1
   SELECT * FROM movies
      WHERE year LIKE '3/__/24';
   --LIKE is a special operator used with WHERE to search for a specific pattern.
   --The '_' indicated to substitute any individual character without breaking the pattern.
   --Instructions:
      --1st Query: Select all movies with the name similar to 'Se_en'.
         SELECT * FROM movies
            WHERE name LIKE 'Se_en';
      --expected result: Returns 2 movies, one with the name 'Seven' and the other 'Se7en';

--Lesson Seven:     Like 2
   SELECT * FROM movies
      WHERE year LIKE '3/%';
   -- % can be used in similar to _ but instead of replacing one character, it can represent 0 or
   -- more characters. '3/%' returns all combinations that start with '3/'.
   --Instructions:
      --1st Query: Select all the movies with 'man' in its title.
         SELECT * FROM movies
            WHERE name LIKE '%man%';
      --expected result: 12 movies are returned with the name man in it.
      --2nd Query: Select all movies that start with the word 'The'.
         SELECT * FROM movies
            WHERE name LIKE 'The %';
     --expected result: Returns all movies that start with the word 'The'.

--Lesson Eight:     Is Null
   SELECT * FROM movies
      WHERE imdb_rating IS NOT NULL;
   -- IS NOT NULL or IS NULL is used instead of the = and != comparison operators when comparing
   -- null values in the table.
   --Instructions:
      --1st Query: Select the name column of all the movies without an IMDb rating.
         SELECT name FROM movies
            WHERE imdb_rating IS NULL;
      --expected result: Returns the name column of all movies where the imdb rating is null;

--Lesson Nine:      Between
   SELECT * FROM movies
      WHERE year BETWEEN 1990 AND 1999;
   -- The BETWEEN operator is used in a WHERE clause to filter the result set within the provided range.
   -- The two values accepted are either numbers, text, or dates.
   --Instructions:
      --1st Query: Write a query that selects all the information for the movies whose name
      -- begins with the letters 'D', 'E', and 'F'.
         SELECT * FROM movies
            WHERE name BETWEEN 'D' AND 'G';
      --expected result: Returns all movies that start with 'D', 'E', and 'F'. Notice how G is not
      -- included in the query results.
      --2nd Query: Select all the movies that were released in the 1970's.
         SELECT * FROM movies
            WHERE year BETWEEN 1970 AND 1979;
      --expected result: Returns all movies that start were released in the 1970s. Notice how 1979 is the
      -- upper bound and is included in the query results.

--Lesson Ten:       And
   SELECT SOMETHING FROM table_name
      WHERE CONDITION1
         AND CONDITION2;
   -- If we want to combine multiple conditions in a where clause we can utilize the AND operator.
   SELECT * FROM movies
      WHERE year BETWEEN 1990 AND 1999
         AND genre = 'romance';
   -- Would combine the 'year BETWEEN 1990 AND 1999' with 'genre = 'romance'' for a refined query. 
   --Instructions:
      --1st Query: Select all movies released in the 1970s and have a higher than 8 imdb rating.
      SELECT * FROM movies
         WHERE year BETWEEN 1970 AND 1979
            AND imdb_rating > 8;
      --expected result: Returns all the movies released in the 1970s and have a high imdb rating
      --2nd Query: Write a query that selects all the movies made prior to 1985 and is also a horror genre.
      SELECT * FROM movies
         WHERE year < 1985
            AND genre = 'horror';   
      --expected result: Returns 4 movies that are made prior to 1985 and are a horror genre.

--Lesson Eleven:    Or
   SELECT SOMETHING FROM table_name
      WHERE CONDITION1
         OR CONDITION2;
   -- While AND returns the row if all conditions are true OR returns the column if any condition is true.
   --Instructions:
      --1st Query: Select all movies that are either action or released after 2014.
      SELECT * FROM movies
         WHERE year > 2014
            OR genre = 'action';
      --expected result: Would return the column if the movie is an action genre or if the release date was
      -- after 2014.
      --2nd Query: Select all movies that are either the genre romance or comedy.
      SELECT * FROM movies
         WHERE genre = 'romance'
            OR genre = 'comedy';
      --expected result: Returns all movies that are either romance or comedy.

--Lesson Twelve:    Order By
   SELECT * FROM movies
      ORDER BY name;
   -- We can sort the results using ORDER BY, either alphabetically or numerically.
   SELECT SOMETHING FROM table_name
      ORDER BY year DESC;
   -- DESC will sort the list in descending order and ASC will sort in ascending order.
   -- ORDER BY goes after the WHERE if present.
   --Instructions:
      --1st Query: Select the name and year columns of all movies ordered alphabetically by name.
         SELECT name, year FROM movies
            ORDER BY name;
      --expected result: The name and year column from all movies are returned in alphabetical order.
      --2nd Query: Now write a query that retrieves the name, year, and imdb_rating columns of all movies
      -- ordered by the lowest ratings to the highest.
      SELECT name, year, imdb_rating FROM movies
         ORDER BY imdb_rating DESC;
      --expected result: Returns the 3 columns from the movies table in rating descending order.

--Lesson Thirteen:    Limit
   SELECT SOMETHING FROM table_name
      LIMIT 10;
   -- The LIMIT clause lets us set the maximum number of rows that the result set will have.
   --Instructions:
      --1st Query: Combine ORDER BY and LIMIT to return the top 3 rated movies
      SELECT * FROM movies
         ORDER BY imdb_rating DESC
         LIMIT 3;
      --expected result: Returns the top 3 imdb rated movies.

--Lesson Fourteen:    Case
   SELECT SOMETHING,
      CASE
         WHEN CONDITION1 THEN RESULT1
         WHEN CONDITION2 THEN RESULT2
         ELSE 'All other cases'
      END AS 'Column Label'
      FROM movies;
   -- SQL handles if-then logic utilizing CASE statements. Each WHEN tests a condition 
   --  and the following THEN gives us the string if the condition is true.
   --Instructions:
      --1st Query: Select the name column and use a CASE statement to create label the romance
      -- and comdedy genres as Chill and the rest as Intense. Rename the full case as Mood.
      SELECT name,
         CASE
            WHEN genre = 'romance' THEN 'Chill'
            WHEN genre = 'comedy' THEN 'Chill'
            ELSE 'Intense'
         END AS 'Mood'
         FROM movies;
      --expected result: This returns 2 columns with the first being the name column and the second
      -- being labelled Mode and either is labelled Intense or Chill if the genre is either romance
      -- or comedy.

--Lesson Fifteen:    Review
   --Summary:
      -- SELECT is the clause we use every time we want to query information.
      -- AS renames a column or table in the output but does not physically alter the table.
      -- DISTINCT return unique values by removing any duplicates from the output.
      -- WHERE lets you filter the results of the query based on conditions that you specify.
      -- LIKE and BETWEEN are special used in conjunction with WHERE to specify conditions.
      -- AND and OR is utilized to combine multiple conditions.
      -- ORDER BY sorts the results from the query in the order specified(alphabetical or numerical).
      -- ASC or DESC is used in conjuction with ORDER BY to sort by either ascending or descending order.
      -- LIMIT specifies the maximum number of rows that the query returns in the results.
      -- CASE creates different outputs for a single column based off the condition provided.

   
   
