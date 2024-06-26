--Lesson One:       Introduction to SQL
   SELECT * FROM celebs;
   --expected result: returns the full table labelled celebs

--Lesson Two:       Relational Databases
   --Definition: A relational database is a database that organizes information into one or more tables.
   --Here, the relational database contains one table.

--Lesson Three:     Statements
   -- analyze the following: SELECT * FROM celebs;
   --Which parts of the statement are the clauses?
   --  ANSWER: The Clauses consists of SELECT and FROM as they are the two commands used.
   --What table are we applying the command to?
   --  ANSWER: We are applying the comand to the celebs table.

--Lesson Four:      Create
   -- CREATE TABLE is a clause that tells SQL you want to create a new table.
   --Instructions
   -- First ensure the table is not there by using the select function
   SELECT * FROM celebs;
   -- Once confirmed create the celebs table
   CREATE TABLE celebs (
      id INTEGER, 
      name TEXT, 
      age INTEGER
   ); 
   --expect result, we expect a table labelled celebs to be created. The columns
   -- consists of an id field (an integer -2,147,483,647 to 2,147,483,647), name text (any string of text),
   -- and an age (again an integer)

--Lesson Five:      Insert
   -- The INSERT statement inserts a new row into a table.
   -- INSERT INTO is a clause that adds the specified row or rows.
   -- VALUES is a clause that indicates the data being inserted.
   --Instructions
   --First add a row into the table using the following, notice each column has a correlating value.
   INSERT INTO celebs (id, name, age) 
      VALUES (1, 'Justin Bieber', 29);
   --Look at the Database Schema. How many rows are in the celebs table? ANSWER: 1 row.
   --Insert 3 more celebrities beneath the previous statement
   INSERT INTO celebs (id, name, age) 
      VALUES (2, 'Beyonce Knowles', 42); 
   INSERT INTO celebs (id, name, age) 
      VALUES (3, 'Jeremy Lin', 35); 
   INSERT INTO celebs (id, name, age) 
      VALUES (4, 'Taylor Swift', 33); 
   --expected results, inserts 3 new rows into the table celebs
   --Look at the Database Schema. How many rows are in the celebs table now? 4 rows.
   
--Lesson Six:       Select
   --SELECT is a clause that indicates that the statement is a query. You will use SELECT every time you query data from a database.
   --name specifies the column to query data from.
   --FROM celebs specifies the name of the table to query data from. In this statement, data is queried from the celebs table.
   SELECT * FROM celebs;
   --excpected result, the * indicates that the query would return all columns in the table celebs
   --Instructions
   --First select the name column by specifying it in the select query from the table celebs
   SELECT name FROM celebs;
   --expected results, returns only the name column
   --Now query all columns in the celebs table.
   SELECT * FROM celebs;
   --expected results, returns all columns

--Lesson Seven:     Alter
   --The ALTER TABLE statement adds a new column to a table.
   ALTER TABLE celebs 
      ADD COLUMN twitter_handle TEXT;
   -- ALTER TABLE is a clause that lets you make the specified changes.
   -- Celebs is the name of the table that is being changed.
   -- ADD COLUMN is a clause that lets you add a new column to a table:
   -- Expect result, the table will have a new column labelled twitter_handle with
   -- the datatype TEXT.
   --Instructions
   ALTER TABLE celebs 
      ADD COLUMN twitter_handle TEXT; 
   SELECT * FROM celebs;
   --expected results, returns all columns and the new column labbelled twitter_handle is full of null values.

--Lesson Eight:     Update
   --The UPDATE statement edits a row in a table.
   --You can use the UPDATE statement when you want to change existing records.
   UPDATE celebs 
      SET twitter_handle = '@taylorswift13' 
      WHERE id = 4; 
   --The statement updates the record with an id value of 4 to have the twitter_handle @taylorswift13.
   --UPDATE is a clause that edits a row in the table with the table being specified as celebs
   --SET is a clause that indicates the column to edit and twitter_handle = '@taylorswift13' indicates what to override it to
   --WHERE is a clause that indicates which row(s) to update with the new column value.
   --Here the row with a 4 in the id column is the row that will have the twitter_handle updated to @taylorswift13.
   --Instructions
   UPDATE celebs 
      SET twitter_handle = '@taylorswift13' 
      WHERE id = 4; 
   SELECT * FROM celebs;
   --expected results, the table will return all rows and the table will reflect the twitter_handle column update to @taylorswift13
   -- made to the row with id=4

--Lesson Nine:      Delete
   --The DELETE FROM statement deletes one or more rows from a table.
   DELETE FROM celebs 
      WHERE twitter_handle IS NULL;
   -- DELETE FROM is a clause that lets you delete rows from a table with the table celebs specified.
   -- WHERE is a clause that lets you select which rows you want to delete. Here we want to delete all of the rows where the twitter_handle column IS NULL.
   -- IS NULL is a condition in SQL that returns true when the value is NULL and false otherwise.
   --Instructions
   DELETE FROM celebs 
      WHERE twitter_handle IS NULL;
   SELECT * FROM celebs;
   --How many rows exist in the celebs table now? Answer, 1 as we only altered 1 row to contain a twitter handle
   --expected results, only the row with the updated handle is returned as all records that were null were deleted

--Lesson Ten:       Constraints
   --Constraints add information about how a column can be used are invoked after specifying the data type for a column.
   CREATE TABLE celebs (
      id INTEGER PRIMARY KEY, 
      name TEXT UNIQUE,
      date_of_birth TEXT NOT NULL,
      date_of_death TEXT DEFAULT 'Not Applicable'
   );
   --PRIMARY KEY columns can be used to uniquely identify the row. Attempts to insert an identical value to a row already in the table will result in a constraint violation which will not allow you to insert the new row.
   --UNIQUE columns have a different value for every row. This is similar to PRIMARY KEY except a table can have many different UNIQUE columns.
   --NOT NULL columns must have a value. Attempts to insert a row without a value for a NOT NULL column will result in a constraint violation and the new row will not be inserted.
   --DEFAULT columns take an additional argument that will be the assumed value for an inserted row if the new row does not specify a value for that column. This can be used as apposed to leaving the value null.
   --Instructions
   CREATE TABLE awards (
      id INTEGER PRIMARY KEY,
      recipient TEXT NOT NULL,
      award_name TEXT DEFAULT 'Grammy'
   );
   --How many tables do you see in the database schema on the right? 2, one table is celebs and the other is the newly created awards
   --expected results, A new table with the title awards is created that contains the following columns. The first is a column labelled
   -- id with a integer data type and a unique primary key as the constraint. The second is labelled recipient and has a text data type with
   -- the constraint of not null which prevents any records from containing null from this column. The third and final is award_name which is
   -- a text type and has the default contstraint set to 'Grammy'

--Lesson Eleven:    Review
   --SQL is a programming language designed to manipulate and manage data stored in relational databases.
      --A relational database is a database that organizes information into one or more tables.
      --A table is a collection of data organized into rows and columns.
   --A statement is a string of characters that the database recognizes as a valid command. The 6 commands covered are as follows:
      --CREATE TABLE creates a new table.
      --INSERT INTO adds a new row to a table.
      --SELECT queries data from a table.
      --ALTER TABLE changes an existing table.
      --UPDATE edits a row in a table.
      --DELETE FROM deletes rows from a table.
   --Constraints add information about how a column can be used.
   --Overall in this lesson we covered SQL statements that create, edit, and delete data.