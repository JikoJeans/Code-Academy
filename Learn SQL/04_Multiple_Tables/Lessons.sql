--Lesson One:       Introduction
    --For this lesson we will use the 3 following tables.
        -- 1) orders (order_id, customer_id, subscription_id, purchase_date)
        -- 2) subscriptions (subscription_id, description, price_per_month, subscription_length)
        -- 3) customers (customer_id, customer_name, address)
    --Instructions:
        --1st Query: Count the number of entries within the orders table.
            SELECT COUNT(*) FROM orders;
        --expected result: 20
        --2nd Query: Count the number of entries within the subscriptions table.
            SELECT COUNT(*) FROM subscriptions;
        --expected result: 9
        --3rd Query: Count the number of entries within the customers table.
            SELECT COUNT(*) FROM customers;
        --expected result: 10

--Lesson Two:       Combining Tables Manually
    --Instructions:
    --Overall search: What is the description of the magazine ordered in order_id 1?
        --1st Search: Find out the subscription_id of the order where the order_id is 1.
            SELECT subscription_id FROM orders WHERE order_id = 1;
                --returns 3
        --2nd Search: Find out what the description is of the subscription where the subscription_id is 3.
            SELECT description FROM subscriptions WHERE subscription_id = 3;
        --expected result: Sports Magazine
    --Overall search: Using the tables displayed, what is the customer_name of the customer in order_id 3?
        --1st Search: Find out the customer_id in the order table where the order_id is 3.
            SELECT customer_id FROM orders WHERE order_id = 3;
                --returns 3
        --2nd Search: Find out what the customer_name is where the customer_id is 3.
            SELECT customer_name FROM customers WHERE customer_id = 3;
        --expected result: Joe Schmo

--Lesson Three:     Combining Tables with SQL
    SELECT table_name1.order_id, table_name2.customer_name
        FROM table_name1
        JOIN table_name2
        ON table_name1.customer_id = table_name2.customer_id;
        --JOIN is use in conjunction with ON when we want to reference 2 or more queries in one table.
        -- Specifically ON controls how the two tables will be joined.
    --Instructions:
        --1st Query: Join orders table and subscriptions table using the subscription_id and select all columns.
        SELECT * FROM orders
            JOIN subscriptions
            ON orders.subscription_id = subscriptions.subscription_id;
        --expected result: Returns a table that contains all the columns from orders and subscriptions and uses
        -- the subscription_id to line up the columns.
        --2nd Query: Only select the rows from the join where description is equal to ‘Fashion Magazine’.
        SELECT * FROM orders
            JOIN subscriptions
            ON orders.subscription_id = subscriptions.subscription_id
            WHERE description = 'Fashion Magazine';
        --expected result: Only returns the rows that have the description 'Fashion Magazine'.

--Lesson Four:      Inner Joins
    -- JOIN (often called inner joins) only returns the columns that match the ON condition.
    --Instructions:
        --1st Query: Determine the number of entries within the newspapers database.
            SELECT COUNT(*)
                FROM newspaper;
        --expected result: 60
        --2nd Query: Count the number of subscribers who get an online newspaper using COUNT().
            SELECT COUNT(*)
                FROM online;
        --expected result: 60
        --3rd Query: How many rows are there when you JOIN newspaper table and online table on their id
        -- columns (the unique ID of the subscriber).
        SELECT COUNT(*)
            FROM newspaper
            JOIN online
            ON newspaper.id = online.id;
        --expected result: 50

--Lesson Five:      Left Joins
    SELECT * FROM table1
        LEFT JOIN table2
        ON table1.c2 = table2.c2;
    -- LEFT JOIN will keep all the rows from the first table, regardless of whether the first table
    --  meets the ON condition.
    --Instructions:
        --1st Query: Perform a left join on the newspaper and online table based on their id columns and
        -- return all the columns.
        SELECT * FROM newspaper
            LEFT JOIN online
            ON newspaper.id = online.id;
        --expected result: Returns all the columns within newspaper and the matching columns in online.
        --2nd Query: Select all the columns where there is no matching online.id.
            SELECT * FROM newspaper
                LEFT JOIN online
                ON newspaper.id = online.id
                WHERE online.id IS NULL;
        --expected result: Returns all the users with only an newspaper subscription.

--Lesson Six:       Primary Key vs Foreign Key
    -- The special column that uniquely identifies each row in a table is known as the
    -- Primary Key column. The only rules for this column goes as follows, none of the
    -- values can be NULL, each value must be unique, and the table can not have more
    -- one primary key column.
    -- When the primary key for one table appears in a different table, it is called a Foreign Key.
    --Instructions:
        --1st Query: Perform an inner join of classes and students table using the primary key(id) and 
        -- foreign key(class_id) described above, and select all the columns.
        SELECT * FROM classes
            JOIN students
            ON students.class_id = classes.id;
        --expected result: Returns both tables utilizing the class_id as the connection.

--Lesson Seven:     Cross Join
    SELECT table1.col1, table2.col2
        FROM table1
        CROSS JOIN table2;
    -- CROSS JOIN returns all possible combinations between the columns selected.
    -- Note: CROSS JOIN has no ON clause as we are not joining any 2 columns in particular.
    --Instructions:
        --1st Query:  Count the number of customers who were subscribed to the newspaper during March
            SELECT COUNT(*) 
                FROM newspaper 
                WHERE start_month <= 3 
                    AND end_month >=3;
        --expected result: 13
        --2nd Query: Select all columns from the cross join of newspaper and months.
            SELECT * FROM newspaper
                CROSS JOIN months;
        --expected result: Returns each newspaper subscriber with each month.
        --3rd Query: Add a WHERE statement to your cross join to restrict to the output to either
        -- after the start month and before the start_month.
        SELECT * FROM newspaper
            CROSS JOIN months
            WHERE newspaper.start_month <= months.month
                AND newspaper.end_month >= months.month;
        --expected result: Returns only the month columns that are in range of the subscription period.
        --4th Query: Create a final query where you aggregate over each month to count the number of subscribers.
        SELECT month, COUNT(*)
            FROM newspaper
            CROSS JOIN months
            WHERE newspaper.start_month <= months.month
                AND newspaper.end_month >= months.month
            GROUP BY months.month;
        --expected result: Returns 1 column with the month and another with the total users who subscribed over that month.

--Lesson Eight:     Union
    SELECT *
        FROM table1
    UNION
    SELECT *
        FROM table2;
    -- UNION combines the results of two or more SELECT queries.
    -- For the UNION to be succesful the tables must have the same nnumber of columns and the same data types in the
    --  same order.
    --Instructions:
        --1st Query: Use UNION to stack the newspaper table on top of the online table.
            SELECT * FROM newspaper
            UNION
            SELECT * FROM online;
        --expected result: Returns both tables with first the newspaper table then the online table.

--Lesson Nine:      With
    WITH previous_results AS (
        SELECT *
        FROM table_name1
    )

    SELECT *
    FROM previous_results
    JOIN table_name2
    ON previous_results.c1 = table_name2.c2;
    -- The WITH statement allows us to perform a separate query and store that query in a temperary table.
    --Instructions:
        --1st Query: Place the whole query below into a WITH statement, inside parentheses (), and give it the name previous_query.
        -- Select the customer_name and subscription column from the join of the temporary table previous_query with customers table.
        SELECT customer_id, COUNT(subscription_id) AS 'subscriptions'
            FROM orders
            GROUP BY customer_id;
        -- Rewritten as follows
        WITH previous_query AS
        (
            SELECT customer_id,
                COUNT(subscription_id) AS 'subscriptions'
                FROM orders
                GROUP BY customer_id
        )
        SELECT customers.customer_name, previous_query.subscriptions
            FROM previous_query
            JOIN customers 
            ON customers.customer_id = previous_query.customer_id;

--Lesson Ten:    Review
--Summary:
    -- JOIN will combine rows from different tables if the join condition is true.
    -- LEFT JOIN will return every row in the left table, and if the join condition is not met, NULL values are used to fill in the columns from the right table.
    -- Primary key is a column that serves a unique identifier for the rows in the table.
    -- Foreign key is a column that contains the primary key to another table.
    -- CROSS JOIN lets us combine all rows of one table with all rows of another table.
    -- UNION stacks one dataset on top of another.
    -- WITH allows us to define one or more temporary tables that can be used in the final query.
    

   
   
