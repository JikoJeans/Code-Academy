--Lesson One:       Introduction
   --Sequel queries can be used to perform calculations on the raw data to answer specific
   -- data questions. Calculations performed on multiple rows of a table are called 'aggregates'.
   -- We will use the following aggregates COUNT, SUM, MIN, MAX, AVG, and ROUND.
   --Instructions:
      --1st Query: Select all the entries in the table fake_apps.
         SELECT * FROM fake_apps;
      --expected result: Returns 5 columns labelled id, name, categoru, downloads, and price.

--Lesson Two:       Count
   SELECT COUNT(*) FROM table_name;
   --COUNT() is a function that takes the name of a column as an argument and counts the number
   -- of non-empty rows in that column.
   --Instructions:
      --1st Query: Count the number of apps that are in the table
         SELECT COUNT(*) FROM fake_apps;
      --expected result: Returns an integer (200) that represents the total number of entries.
      --2nd Query: Add a WHERE clause in the previous query to count how many free apps are in the table.
         SELECT COUNT(*) FROM fake_apps
            WHERE price = 0.0;
      --expected result: Returns an integer (73) that represents the total number of free apps in the table.

--Lesson Three:     Sum
   SELECT SUM(columnName) FROM table_name;
      --SUM() takes in a column name as an argument and returns the sum of the values in that column.
   --Instructions:
      --1st Query: What is the total number of downloads for all of the apps combined?
         SELECT SUM(downloads) FROM fake_apps;
      --expected result: Returns an integer (3322760) which represents the total downloads of all the apps in the table.

--Lesson Four:      Max/Min
   SELECT MAX(columnName) FROM table_name;
   SELECT MIN(columnName) FROM table_name;
   --The MAX() and MIN() functions take the name of a column as an argument return the highest and lowest values in a column.
   --Instructions:
      --1st Query: What is the least number of times an app has been downloaded?
         SELECT MIN(downloads) FROM fake_apps;
      --expected result: Returns 1387 which represents the row with the least amount of downloads.
      --2nd Query: Write a new query that returns the price of the most expensive app.
         SELECT MAX(price) FROM fake_apps;
      --expected result: Returns 14.99 which represents the most expensive app in the fake_apps database.

--Lesson Five:      Average
   SELECT AVG(columnName) FROM table_name;
   --The AVG functions returns the average value of the column name passed in.
   --Instructions:
      --1st Query: Calculate the average number of downloads for all the apps in the table.
         SELECT AVG(downloads) FROM fake_apps;
      --expected result: Returns 16613.8 which represents the average downloads.
      --2nd Query: Calculate the average price for all the apps in the table.
         SELECT AVG(price) FROM fake_apps;
      --expected result: Returns 2.02365 which is the average price in the database.

--Lesson Six:       Round
   SELECT ROUND(columnName, 0) FROM table_name;
   --Round() functions takes two arguments(Name of the Column, Number of decimal places) and rounds the column to the number
   -- of decimals places specified by the integer.
   --Instructions:
      --1st Query: Query the name column and a rounded price column.
         SELECT name, ROUND(price, 0) FROM fake_apps;
      --expected result: Returns the name and price column with the price column being rounded off so each ends with .0.
      --2nd Query:Calculate the average price for all the apps in the table rounded to 2 decimal places.
         SELECT ROUND(AVG(price), 2) FROM fake_apps;
      --expected result: returns 2.02 which is the rounded average.

--Lesson Seven:     Group By 1
   SELECT year, AVG(columnName)
      FROM table_name
      GROUP BY year
      ORDER BY year;
   --GROUP BY is a clause in SQL that is used with aggregate functions(and by extension used with the SELECT statement)
   -- to arrange identical data into groups. The GROUP BY statement comes after any WHERE statements, but before
   -- ORDER BY or LIMIT.
   --Instructions:
      --1st Query: In this query our aggregate function is COUNT() and we arranged price into groups.
         SELECT price, COUNT(*) 
            FROM fake_apps
            GROUP BY price;
      --expected result: Returns the unique prices of all the apps in the table and the second column returns the number
      -- of apps that are sold for the same amount.
      --2nd Query: Add a WHERE clause to count the total number of apps that have been downloaded more than 20,000
      -- times, at each price
      SELECT price, COUNT(*) 
         FROM fake_apps
         WHERE downloads > 20000
         GROUP BY price;
      --expected result: The count column now reflects the total number of apps that were downloaded more than 20,000 times.
      --3rd Query: Write a new query that calculates the total number of downloads for each category.
      SELECT category, SUM(downloads)
         FROM fake_apps
         GROUP BY category;
      --expected result: Returns the total number of downloads for each category.

--Lesson Eight:     Group By 2
   SELECT year, AVG(columnName)
      FROM table_name
      GROUP BY 1
      ORDER BY 1;
   -- SQL lets us use column reference(s) in GROUP BY that use Numbers (1, 2, 3, so on) to represents the column selected.
   --Instructions:
      --1st Query: Suppose we have the query below:
         SELECT category, price, AVG(downloads)
         FROM fake_apps
         GROUP BY category, price;
         --Rewrite the query to use column reference numbers instead of column names.
         SELECT category, price, AVG(downloads)
         FROM fake_apps
         GROUP BY 1, 2;
      --expected result: Returns the same query as above to show how columns can be referenced both ways.

--Lesson Nine:      Having
   SELECT year, AVG(columnName)
      FROM table_name
      GROUP BY 1
      HAVING COUNT(name) > 10
      ORDER BY 1;
   -- HAVING is used similar to WHERE but rather than filter individual entries, HAVING filters through groups.
   --Instructions:
      --1st Query: Suppose we have the query below:
      SELECT price, 
         ROUND(AVG(downloads)),
         COUNT(*)
      FROM fake_apps
      GROUP BY price;
      -- Now add the HAVING clause to restrict the query to the price points that have more than 10 apps.
      SELECT price,
         ROUND(AVG(downloads)),
         COUNT(*)
      FROM fake_apps
      GROUP BY price
      HAVING COUNT(*)>10;
      --expected result: returns the updated list witht he count(*)>10

--Lesson Ten:    Review
--Summary:
    --Aggregate functions combine multiple rows together to form a single value of more meaningful information.
      --  COUNT(): count the number of rows
      --  SUM(): the sum of the values in a column
      --  MAX()/MIN(): the largest/smallest value
      --  AVG(): the average of the values in a column
      --  ROUND(): round the values in the column
   --We can filter aggregate functions with the following clauses.
      --GROUP BY is a clause used with aggregate functions to combine data from one or more columns.
      --HAVING limits the results of a query based on an aggregate property.

   
   
