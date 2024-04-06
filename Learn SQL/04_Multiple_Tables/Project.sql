-- This project will utilize 3 databases all stored within the same animalHospital.sqlite.

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

--Queries to test your knowledge
    --Query 1: Select all the columns in the animals and owners table by joining them using the
        -- owner_ID column in the animals table and the ID column in the owner table. How many
        -- rows are there?

    --Query 2: Perform a left join on the animals and owners table again with the owner_ID and
        -- ID columns. How many more rows are there compared to the last problem?
        
    --Query 3: Now select all the columns in the owners and orders table. Use the owner table
        -- primary key column in the owner table and the foreign key column owner_ID for the on condition.

    --Query 4: Use a cross join clause to determine all the animals and services that the animal hospital
        -- offers and include the cost of each service in the table.
        
    --Query 5: Combine the unique animals types with the unique zip codes using the union clause.

    --Query 6: Use the with clause to create a temporary database that contains the orders table joined
        -- with the animal table. Use the new animal_order table and join it with the owners table so that
        -- each order has the corresponding animal and customer information.


--Solutions
    --Query 1: Select all the columns in the animals and owners table by joining them using the
        -- owner_ID column in the animals table and the ID column in the owner table. How many
        -- rows are there?
        -- Return all the columns with
            SELECT * FROM animals
                JOIN owners
                ON animals.owner_ID = owners.ID;
        -- The number of rows is calculated with count and results in 200 entries joined
            SELECT COUNT(*) FROM animals
                JOIN owners
                ON animals.owner_ID = owners.ID;
    --Query 2: Perform a left join on the animals and owners table again with the owner_ID and
        -- ID columns. How many more rows are there compared to the last problem?
        -- To return the left join table we use the following
            SELECT * FROM animals
                LEFT JOIN owners
                ON animals.owner_ID = owners.ID;
        -- To return how many more rows there are we add count and get 203 entries and subtract the 200
            -- to find that there are 3 more entries added.
            SELECT COUNT(*) FROM animals
                LEFT JOIN owners
                ON animals.owner_ID = owners.ID;
        
    --Query 3: Now select all the columns in the owners and orders table. Use the order table
        -- primary key column and the foreign key column owner_ID for the on condition.
        --similar to above we utilize JOIN and ON to get
            SELECT * FROM orders
                JOIN owners
                ON  orders.owner_ID = owners.ID;

    --Query 4: Use a cross join clause to determine all the animals and services that the animal hospital
        -- offers and include the cost of each service in the table.
        -- Query for the cross join
            SELECT DISTINCT animals.type, orders.type
                FROM animals
                CROSS JOIN orders;
            -- For total service count we add the count function
            SELECT COUNT(*) FROM (
                SELECT DISTINCT animals.type, orders.type
                    FROM animals
                    CROSS JOIN orders
                ) tempTable;
        
    --Query 5: Combine the unique animals types with the unique zip codes using the union clause.
        SELECT DISTINCT type
            FROM animals
        UNION
            SELECT DISTINCT zipcode
                FROM owners;
    
    --Query 6: Use the with clause to create a temporary database that contains the orders table joined
        -- with the animal table. Use the new animal_order table and join it with the owners table so that
        -- each order has the corresponding animal and customer information.
        WITH animal_order AS (
            SELECT * FROM orders
                JOIN animals
                ON orders.animal_ID = animals.ID)
        SELECT * FROM animal_order
            JOIN owners
            ON animal_order.owner_ID = owners.ID;