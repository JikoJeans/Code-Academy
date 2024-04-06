-- This project will utilize 3 databases all stored within the same animalHospital.sqlite to cover all the
    -- functions learned thoughout the Learn SQL course. The practice queries will be organized by the
    -- correlating lessons in which they are covered. In addition to this there will be one section added
    -- meant to create more complicated queries with the clauses covered.

-- 3 tables used in the databases
    --Animal Table Declaration
        -- CREATE TABLE animals(
            -- ID INTEGER PRIMARY KEY, name TEXT, gender TEXT, type TEXT,
            -- birth_year INTEGER, owner_ID INTEGER);

    --Owner Table Declaration
        --CREATE TABLE owners (
            -- ID INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT,
            -- gender TEXT, address INTEGER, zipcode INTEGER);

    --Order Table Declaration
        -- CREATE TABLE orders (
            -- ID INTEGER PRIMARY KEY, animal_ID INTEGER, owner_ID INTEGER,
            -- type TEXT, cost INTEGER, year INTEGER, month INTEGER,
            -- status TEXT);

--Manipulation Lesson Practice: 01
    --The 6 commands covered are as follows:
        --CREATE TABLE creates a new table.
            --Query 1: Create a new table called location_data with the columns as follows. (ID INTEGER
                -- animal_type TEXT, zipcode INTEGER)
        --INSERT INTO adds a new row to a table.
            --Query 2: Insert 2 new rows into the new table with the values (1, 'Dog', 96278) and
                --(2, 'Rabbit', 44856)
        --SELECT queries data from a table.
            --Query 3: SELECT all columns in  the new table.
        --ALTER TABLE changes an existing table.
            --Query 4: Add a new column to the new table using name owner_name and make the type TEXT.
        --UPDATE edits a row in a table.
            --Query 5: Now edit the name column in the first entry of the new table so that the
                --owner_name is set to 'Paul'.
        --DELETE FROM deletes rows from a table.
            --Query 6: Delete the second entry in the table.
        --DROP is used to denotes which columns to delete from the table;
            --Query 7: First drop the zipcode column from the new table.
            --Query 8: Now drop the full location_data table.

--Queries Lesson Practice: 02
    --The 10 commands covered are as follows:
        -- SELECT is the clause we use every time we want to query information.
            --Query 1: Select all the columns in the animals table.
        -- AS renames a column or table in the output but does not physically alter the table.
            --Query 2: Select the first_name and last_name columns in the owners table and label
                -- them as 'Users'.
        -- DISTINCT return unique values by removing any duplicates from the output.
            --Query 3: Select all the distinct animal types in the animals table.
        -- WHERE lets you filter the results of the query based on conditions that you specify.
            --Query 4: Select all the distinct animal names where the animal is female.
        -- LIKE and BETWEEN are special used in conjunction with WHERE to specify conditions.
            --Query 5: Use the like clause to find all the animal names that has an 'A' in it.
            --Query 6: Use the between clause to find all the orders that will take place in the
                -- first 6 months of the 2024.
        -- AND and OR is utilized to combine multiple conditions.
            --Query 7: Select the owners who are male and who live in the zipcode 21725.
            --Query 8: Select the animals that are dog or cat type.
        -- ORDER BY sorts the results from the query in the order specified(alphabetical or numerical).
            --Query 9: Select all the orders in the orders table but order them by the owner ID.
        -- ASC or DESC is used in conjuction with ORDER BY to sort by either ascending or descending order.
            --Query 10: Select all the orders from the orders table and order them by the most expensive
                --order first.
            --Query 11: Select all the orders from the table but order them by the animal ID in descending
                --order.
        -- LIMIT specifies the maximum number of rows that the query returns in the results.
            --Query 12: Select the first 5 records that appear when you query the animal table.
        -- CASE creates different outputs for a single column based off the condition provided.
            --Query 13: Select all the columns in the animals table but create a case where depending on the
                --animal type we return the following. For 'Dog' type return 1, 'Cat' type return 2, and for
                --others 3. Label this column as 'animal_type_ID';

--Aggregate Lesson Practice: 03
    --The 8 commands covered are as follows:
        --  COUNT(): count the number of rows
            --Query 1: Count the number of entries within the orders table.
        --  SUM(): the sum of the values in a column
            --Query 2: Calculate the total cost of all procedures in the orders table.
        --  MAX()/MIN(): the largest/smallest value
            --Query 3: Find the order type that cost the most.
            --Query 4: Find the order type that cost the least.
        --  AVG(): the average of the values in a column
            --Query 5: Find the average age (in years) of all the pets in the 
        --  ROUND(): round the values in the column
            --Query 6: Calculate the total cost of all procedures in the orders table but round it to 0
                --decimal places.
        --GROUP BY is a clause used with aggregate functions to combine data from one or more columns.
            --Query 7: Calculate the total amount of orders that was made grouped by the owner_ID.
        --HAVING limits the results of a query based on an aggregate property.
            --Query 8: Calculate the amount of orders that was made grouped by the owner_ID. Only include
            -- the orders that were for shots.

--Multiple Tables Lesson Practice: 04
    --The 7 commands covered are as follows:
        -- JOIN will combine rows from different tables if the join condition is true.
            --Query 1: Join the animals table with the orders table using the animal_ID column for the on
                --condition.
        -- LEFT JOIN will return every row in the left table, and if the join condition is not met, NULL
                --values are used to fill in the columns from the right table.
            --Query 2: Perform a left join on the animals table with the owners table on the owners.ID
                --column.
        -- Primary key is a column that serves a unique identifier for the rows in the table.
        -- Foreign key is a column that contains the primary key to another table.
            --Query 3: Utilize the primary key column in the owners table to join it with the orders table
                --with the forein key owners_ID.
        -- CROSS JOIN lets us combine all rows of one table with all rows of another table.
            --Query 4: Use the cross join clause to find all the potential animal types with each status
                --type for payment.
        -- UNION stacks one dataset on top of another.
            --Query 5: Perform a union to first determine the count of distinct zip codes and then find the
            -- count of distinct addresses. Are they the same?
        -- WITH allows us to define one or more temporary tables that can be used in the final query.
            --Query 6: Save a temperary table called pet_care_cost that joins the orders table with the animal
                -- table. Then query the total pet cost of each animal by grouping the orders by animal gender.

--Compound Queries: 05
    --Query 1: The pet clinic wants a report of top 10 animals that have visted the clinic the most. The report
        --should include the animal_ID, name, number of visits, and total amount spent.
    --Query 2: The pet clinic now wants a report of the top 10 pet owners who have spent the the most money at
        --the clinic. The report should include the the pet owner ID, number of pets owned, and total amount spent.
    --Query 3: The pet clinic instead decided to send flyers out to the 10 households who have visited the clinic
        --the most for their loyal use. The information needed for the flyers should include the last name, number
        --of visits, and each pet type that lives in the home.
    --Query 4: The pet clinic wants to do a promotion for individuals who have their bill up to date and dont have
        --any orders scheduled. They will need the address, pet types, owner ID, and total spent by that owner to
        --determine the discount amount. Add a new column that determines what kind of discount the user will get
        --with the parameters as follows, if they have 2 or more pets they get a bogo promotion, if they have spent
        --at least 50 dollars in the past then they get a 20% off their next visit, and if they have spent less
        --they get a free shots coupon.
    --Query 5: The pet clinic wants to hand out flyers in the zipcode that most frequently uses the clinic. For this
        --the clinic wants a report that includes the zipcode, number of known users in that zipcode, and how many known
        --animals live in that zipcode.
    --Query 6: The pet clinic also would like to know what zipcode holds the most number of animals that they know of
        --so that they can promote there. Again the report should include the zipcode, number of known users in that
        --zipcode, and how many known animals live in that zipcode.
    --Query 7: The pet clinic would like an list of the users who still owe money for services. To send out the mail they
        --would like the report to contain the owner_ID, total owed, zipcode, and address.
    --Query 8: The pet clinic would like to have a report of all future orders in order to order supplies. Provide a report
        --that denotes the amount of shots and the amount of checkups scheduled over this year grouped by months to prepare
        --the monthly orders. For these orders it would also be important to know the type of animals that are gonna visit
        --each month so append it to the report.
    --Query 9: The pet clinic would like a report of the neighborhoods that they have the most support from. Generate one
        --that contains the number of houses in a zip code that the clinic has in their database along with how much anticipated
        --revenue the neighborhood has brought in.
    --Query 10: Lastly the clinic would like a report of all the owners who have not brought in their animal from the 6 months
        --to send them a coupon for 20% off their next check up. For this the report needs to contain the pet ID, pet name, pet type,
        --last visit year, last visit month, owner ID, owner first name, owner last name,  owner address, and owner zip code in order
        --to personalize the coupon. An order should be used on the address to ensure that one house only gets one coupon.

--Solutions to practice problems:
--Manipulation Lesson Practice: 01
    --The 6 commands covered are as follows:
        --CREATE TABLE creates a new table.
            --Query 1: Create a new table called location_data with the columns as follows. (ID INTEGER
                -- animal_type TEXT, zipcode INTEGER, animal_gender TEXT) and set the animal_gender to
                -- female by default.
                CREATE TABLE location_data
                (
                    ID INTEGER PRIMARY KEY,
                    animal_type TEXT,
                    zipcode INTEGER,
                    animal_gender TEXT DEFAULT 'Female'
                );
        --INSERT INTO adds a new row to a table.
            --Query 2: Insert 2 new rows into the new table with the values (1, 'Dog', 96278) and
                --(2, 'Rabbit', 44856, 'Male')
                INSERT INTO location_data (ID, animal_type, zipcode)
                    VALUES (1, 'Dog', 96278);
                INSERT INTO location_data (ID, animal_type, zipcode, animal_gender)
                    VALUES (2, 'Rabbit', 44856, 'Male');
        --SELECT queries data from a table.
            --Query 3: SELECT all columns in  the new table.
                SELECT * FROM location_data;
        --ALTER TABLE changes an existing table.
            --Query 4: Add a new column to the new table using name owner_name and make the type TEXT.
                ALTER TABLE location_data
                    ADD COLUMN owner_name TEXT;
        --UPDATE edits a row in a table.
            --Query 5: Now edit the name column in the first entry of the new table so that the
                --owner_name is set to 'Paul'.
                UPDATE location_data
                    SET owner_name = 'Paul'
                    WHERE ID = 1;
        --DELETE FROM deletes rows from a table.
            --Query 6: Delete the second entry in the table.
                DELETE FROM location_data
                    WHERE ID = 2;
        --DROP is used to denotes which columns to delete from the table;
            --Query 7: First drop the zipcode column from the new table.
                ALTER TABLE location_data
                    DROP COLUMN zipcode;
            --Query 8: Now drop the full location_data table.
                DROP TABLE location_data;

--Queries Lesson Practice: 02
    --The 10 commands covered are as follows:
        -- SELECT is the clause we use every time we want to query information.
            --Query 1: Select all the columns in the animals table.
                SELECT * FROM animals;
        -- AS renames a column or table in the output but does not physically alter the table.
            --Query 2: Select the first_name and last_name columns in the owners table and label
                -- them as 'Users'.
                SELECT first_name, last_name FROM owners
                    AS "Users";
        -- DISTINCT return unique values by removing any duplicates from the output.
            --Query 3: Select all the distinct animal types in the animals table.
                SELECT DISTINCT type FROM animals;
        -- WHERE lets you filter the results of the query based on conditions that you specify.
            --Query 4: Select all the distinct animal names where the animal is female.
                SELECT DISTINCT name from animals
                    WHERE gender = 'Female';
        -- LIKE and BETWEEN are special used in conjunction with WHERE to specify conditions.
            --Query 5: Use the like clause to find all the animal names that has an 'A' in the
                --beginning;
                SELECT name from animals
                    WHERE name LIKE 'A%';
            --Query 6: Use the between clause to find all the orders that will take place in the
                -- first 6 months of the 2024.
                SELECT * FROM orders
                    WHERE year = 2024
                        AND month BETWEEN 0 AND 6;
        -- AND and OR is utilized to combine multiple conditions.
            --Query 7: Select the owners who are male and who live in the zipcode 21725.
                SELECT * FROM owners
                    WHERE gender = 'Male'
                        AND zipcode = 21725;
            --Query 8: Select the animals that are dog or cat type.
                SELECT * FROM animals
                    WHERE type = 'Dog'
                        OR type = 'Cat';
        -- ORDER BY sorts the results from the query in the order specified(alphabetical or numerical).
            --Query 9: Select all the orders in the orders table but order them by the owner ID.
                SELECT * FROM orders
                    ORDER BY owner_ID;
        -- ASC or DESC is used in conjuction with ORDER BY to sort by either ascending or descending order.
            --Query 10: Select all the orders from the orders table and order them by the most expensive
                --order first.
                SELECT * FROM orders
                    ORDER BY cost DESC;
            --Query 11: Select all the orders from the table but order them by the animal ID in ascending
                --order.
                SELECT * FROM orders
                    ORDER BY animal_ID ASC;
        -- LIMIT specifies the maximum number of rows that the query returns in the results.
            --Query 12: Select the first 5 records that appear when you query the animal table.
                SELECT * FROM animals
                    LIMIT 5;
        -- CASE creates different outputs for a single column based off the condition provided.
            --Query 13: Select all the columns in the animals table but create a case where depending on the
                --animal type we return the following. For 'Dog' type return 1, 'Cat' type return 2, and for
                --others 3. Label this column as 'animal_type_ID';
                SELECT * ,
                    CASE 
                        WHEN type = 'Dog' THEN '1'
                        WHEN type = 'Cat' THEN '2'
                        ELSE '3'
                    END animal_type_ID FROM animals;

--Aggregate Lesson Practice: 03
    --The 8 commands covered are as follows:
        --  COUNT(): count the number of rows
            --Query 1: Count the number of entries within the orders table.
                SELECT COUNT(*) FROM orders;
        --  SUM(): the sum of the values in a column
            --Query 2: Calculate the total cost of all orders in the orders table.
                SELECT SUM(cost) FROM ORDERS;
        --  MAX()/MIN(): the largest/smallest value
            --Query 3: Find the order type that cost the most.
                SELECT type, MAX(cost) FROM ORDERS;
            --Query 4: Find the order type that cost the least.
                SELECT type, MIN(cost) FROM ORDERS;
        --  AVG(): the average of the values in a column
            --Query 5: Find the average birth year of all the pets in the animals table
                SELECT AVG(birth_year) FROM animals;
        --  ROUND(): round the values in the column
            --Query 6: Calculate the total cost of all procedures in the orders table but round it to 2
                --decimal places.
                SELECT ROUND(SUM(cost), 2) FROM ORDERS;
        --GROUP BY is a clause used with aggregate functions to combine data from one or more columns.
            --Query 7: Calculate the total amount of orders that was made grouped by the owner_ID.
                SELECT owner_ID, COUNT(*) FROM orders
                    GROUP BY owner_ID;
        --HAVING limits the results of a query based on an aggregate property.
            --Query 8: Calculate the amount of orders that was made grouped by the owner_ID, however, this time
            -- only include the owners who have more than 5 orders in the system.
                SELECT owner_ID, COUNT(*) FROM orders
                    GROUP BY owner_ID
                        HAVING COUNT(*) > 5;

--Multiple Tables Lesson Practice: 04
    --The 6 commands covered are as follows:
        -- JOIN will combine rows from different tables if the join condition is true.
            --Query 1: Join the animals table with the orders table using the animal_ID column for the on
                --condition.
                SELECT * FROM orders
                    JOIN animals
                        ON orders.animal_ID = animals.ID;
        -- LEFT JOIN will return every row in the left table, and if the join condition is not met, NULL
                --values are used to fill in the columns from the right table.
            --Query 2: Perform a left join on the animals table with the owners table on the owners.ID
                --column.
                SELECT * from animals
                    LEFT JOIN owners
                        ON animals.owner_ID = owners.ID;
        -- Primary key is a column that serves a unique identifier for the rows in the table.
        -- Foreign key is a column that contains the primary key to another table.
            --Query 3: Utilize the primary key column in the owners table to join it with the orders table
                --with the forein key owners_ID.
                SELECT * FROM orders
                    JOIN owners
                        ON orders.owner_ID = owners.ID;
        -- CROSS JOIN lets us combine all rows of one table with all rows of another table.
            --Query 4: Use the cross join clause to find all the potential animal types with each status
                --type for payment.
                SELECT DISTINCT animals.type, orders.status FROM animals
                    CROSS JOIN orders;
        -- UNION stacks one dataset on top of another.
            --Query 5: Perform a union to first determine the count of distinct zip codes and then find the
            -- count of distinct addresses. Are they the same? No, there are 14 zip codes and 30 addresses.
                SELECT COUNT(DISTINCT address) FROM owners
                    UNION
                        SELECT COUNT(DISTINCT zipcode) FROM owners;
        -- WITH allows us to define one or more temporary tables that can be used in the final query.
            --Query 6: Save a temperary table called pet_care_cost that joins the orders table with the animal
                -- table. Then query the total pet cost of each animal by grouping the orders by animal gender.
                WITH pet_care_cost AS (
                    SELECT * FROM orders
                        JOIN animals
                            ON orders.animal_ID = animals.ID
                ) SELECT pet_care_cost.gender, SUM(cost) FROM pet_care_cost
                    GROUP BY pet_care_cost.gender;

--Independent Studies Compound Queries: 05
    --Query 1: The pet clinic wants a report of top 10 animals that have visted the clinic the most. The report
        --should include the animal_ID, name, number of visits, and total amount spent., COUNT(orders.animal_ID), SUM(orders.cost)
        SELECT animals.ID, animals.name, COUNT(orders.animal_ID), SUM(orders.cost)
            FROM animals
                JOIN orders
                    ON animals.ID = orders.animal_ID
            GROUP BY animals.ID
            ORDER BY COUNT(orders.animal_ID) DESC
            LIMIT 10;
    --Query 2: The pet clinic now wants a report of the top 10 pet owners who have spent the the most money at
        --the clinic. The report should include the the pet owner ID, number of pets owned, and total amount spent.
        SELECT orders.owner_ID, COUNT(animals.owner_ID), SUM(orders.cost)
            FROM orders
                JOIN animals
                    ON orders.animal_ID = animals.ID
            GROUP BY orders.animal_ID
            ORDER BY SUM(orders.cost) DESC
            LIMIT 10;
    --Query 3: The pet clinic instead decided to send flyers out to the 10 households who have visited the clinic
        --the most for their loyal use. The information needed for the flyers should include the last name, number
        --of visits, and each pet type that lives in the home.
        WITH owners_and_orders as(
            SELECT owners.last_name, COUNT(orders.owner_ID) AS "count", orders.owner_ID
                FROM orders
                    JOIN owners
                        ON orders.owner_ID = owners.ID
                GROUP BY orders.owner_ID
                ORDER BY COUNT(orders.owner_ID) DESC
                LIMIT 10
        ) SELECT owners_and_orders.owner_ID, owners_and_orders.last_name, owners_and_orders.count, animals.type
            FROM owners_and_orders
                JOIN animals
                    ON owners_and_orders.owner_ID = animals.owner_ID
            ORDER BY owners_and_orders.count DESC;
    --Query 4: The pet clinic wants to hand out flyers in the zipcode that most frequently uses the clinic. For this
        --the clinic wants a report that includes the zipcode, number of known users in that zipcode, and how many known
        --animals live in that zipcode.
            SELECT owners.zipcode, COUNT(DISTINCT owners.ID), COUNT(animals.ID)
            FROM owners
                LEFT JOIN animals
                    ON owners.ID = animals.owner_ID
            GROUP BY owners.zipcode
            ORDER BY COUNT(DISTINCT owners.ID) DESC;
    --Query 5: The pet clinic also would like to know what zipcode holds the most number of animals that they know of
        --so that they can promote there. Again the report should include the zipcode, number of known users in that
        --zipcode, and how many known animals live in that zipcode.
        SELECT owners.zipcode, COUNT(DISTINCT owners.ID), COUNT(animals.ID)
            FROM owners
                LEFT JOIN animals
                    ON owners.ID = animals.owner_ID
            GROUP BY owners.zipcode
            ORDER BY COUNT(animals.ID) DESC;
    --Query 6: The pet clinic would like an list of the users who still owe money for services. To send out the mail they
        --would like the report to contain the owner_ID, total owed, zipcode, and address.
        SELECT owners.ID, SUM(orders.cost), owners.zipcode, owners.address
            FROM owners
                JOIN orders
            ON owners.ID = orders.owner_ID
            Where orders.status = 'Pending Payment'
            GROUP BY owners.ID;
    --Query 7: The pet clinic would like to have a report of all future orders in order to calculate supplies cost. Provide a report
        --that denotes the amount of shots and the amount of checkups scheduled over time grouped by years.
        SELECT year, type, COUNT(*)
            FROM orders
                WHERE type = 'Shots'
            GROUP BY year
        UNION
            SELECT year, type, COUNT(*)
                FROM orders
                    WHERE type = 'Check up'
                GROUP BY year;
    --Query 8: The pet clinic would like a report of the neighborhoods that they have the most support from. Generate one
        --that contains the number of houses in a zip code that the clinic has in their database along with how much anticipated
        --revenue the neighborhood has brought in.
        SELECT owners.zipcode, COUNT(DISTINCT owners.address), SUM(orders.cost)
            FROM owners
                JOIN orders
                    ON owners.ID = orders.owner_ID
            GROUP BY owners.zipcode
            ORDER BY SUM(orders.cost) DESC;
    --Query 9: Lastly the clinic would like a report of all the owners who have not brought in their animal from the last year
        --to send them a coupon for 20% off their next check up. For this the report needs to contain the pet ID, pet name, pet type,
        --last visit year, owner ID, owner first name, owner last name, owner address, and owner zip code in order
        --to personalize the coupon. An order should be used on the address to ensure that one house only gets one coupon.
        WITH order_pet_information AS (
            SELECT DISTINCT orders.animal_ID, animals.name, animals.type, MAX(orders.year) AS 'last_visit', orders.owner_ID
                FROM orders
                    JOIN animals
                        ON orders.animal_ID = animals.ID
                    WHERE year < 2024
                GROUP BY animal_ID
        ) SELECT order_pet_information.animal_ID, order_pet_information.name, order_pet_information.type, order_pet_information.last_visit,
            order_pet_information.owner_ID, owners.first_name, owners.last_name, owners.address, owners.zipcode
            FROM order_pet_information
                JOIN owners
                    ON order_pet_information.owner_ID = owners.ID
            ORDER BY owners.address;
    --Query 10: The pet clinic wants to do a promotion for individuals who have their bill up to date and dont have
        --any orders scheduled. They will need the address, pet types, owner ID, and total spent by that owner to
        --determine the discount amount. Add a new column that determines what kind of discount the user will get
        --with the parameters as follows, if they have 2 or more pets they get a bogo promotion, if they have spent
        --at least 50 dollars in the past then they get a 20% off their next visit, and if they have spent less
        --they get a free shots coupon.
        WITH owners_excluded AS (
            SELECT DISTINCT owners.ID AS 'ID'
                FROM owners
                    JOIN orders
                        ON owners.ID = orders.owner_ID
                WHERE orders.status = 'Pending Payment'
                    OR orders.status = 'Scheduled'
                GROUP BY owners.ID
        ), owners_and_orders AS (
            SELECT owners.ID, orders.animal_ID, owners.address, SUM(orders.cost) AS "total_spent"
                FROM owners
                    JOIN orders
                        ON owners.ID = orders.owner_ID
                WHERE orders.status = 'Paid'
                GROUP BY owners.ID
        ), final_owners_table AS (
            SELECT animals.type, owners_and_orders.ID, owners_and_orders.address, owners_and_orders.total_spent,
            CASE
                WHEN COUNT(owners_and_orders.ID) > 1 THEN 'Buy One Get One'
                WHEN owners_and_orders.total_spent > 50 THEN '20% Off Your Next Visit'
                ELSE 'Free Shots For Your Next Visit'
            END AS "coupon_type"
            FROM owners_and_orders
                JOIN animals
                    ON owners_and_orders.ID = animals.owner_ID
            GROUP BY owners_and_orders.ID
            ORDER BY owners_and_orders.ID
        ) SELECT final_owners_table.ID, final_owners_table.type, final_owners_table.address, final_owners_table.total_spent,
            final_owners_table.coupon_type
            FROM final_owners_table
                WHERE final_owners_table.ID NOT IN(
                    SELECT final_owners_table.ID
                        FROM final_owners_table
                        LEFT JOIN owners_excluded
                                ON final_owners_table.ID = owners_excluded.ID
                        WHERE final_owners_table.ID = owners_excluded.ID
                )
            ORDER BY final_owners_table.address;