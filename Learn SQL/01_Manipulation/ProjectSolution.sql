--File 1 Instructions:
--1) Create a new database called 'RevenueDB'
CREATE DATABASE RevenueDB;
--2) Create the following tables with appropriate columns and constraints:
--    2a) 'Deposits' table with the columns: 'DepositID', 'Player', 'Deposit_Amount', 'Date' and the following constraints:
--        DepositID:      An integer that must use the primary constraint.
--        Player:         A text value that can not be null.
--        Deposit_Amount: An integer value that can not be null.
--        Date:           A text value that can be null.
CREATE TABLE Deposits (
  DepositID INTEGER PRIMARY KEY,
  Player TEXT NOT NULL,
  Deposit_Amount INTEGER NOT NULL,
  Date TEXT
);
--3) Insert the following sample data into both tables.
--DepositID,  Player,            Deposit_Amount, Date
--0,         'Bowen Higgins',    500,            3/23/24
INSERT INTO Deposits (DepositID, Player, Deposit_Amount, Date)
VALUES (0, 'Bowen Higgins', 500, ' 3/23/24');
--1,         'Franklin Sierra',  750,            3/25/24
INSERT INTO Deposits (DepositID, Player, Deposit_Amount, Date)
VALUES (1, 'Franklin Sierra', 750, '3/25/24');
--2,         'Marceline Avila',  100,            3/24/24
INSERT INTO Deposits (DepositID, Player, Deposit_Amount, Date)
VALUES (2, 'Marceline Avila', 100, '3/24/24');
--3,         'Olivia Palmer',    2000,           3/24/24
INSERT INTO Deposits (DepositID, Player, Deposit_Amount, Date)
VALUES (3, 'Olivia Palmer', 2000, '3/24/24');
--4,         'Liam Nisan',       3000,           3/25/24
INSERT INTO Deposits (DepositID, Player, Deposit_Amount, Date)
VALUES (4, 'Liam Nisan', 3000, '3/25/24');
--5,         'Marceline Avila',  500,            3/25/24
INSERT INTO Deposits (DepositID, Player, Deposit_Amount, Date)
VALUES (5, 'Marceline Avila', 500, '3/25/24');
--6,         'Kaleb Gentry',     300,            3/25/24
INSERT INTO Deposits (DepositID, Player, Deposit_Amount, Date)
VALUES (6, 'Kaleb Gentry', 300, '3/25/24');

--File 2 Instructions:
--4) Perform the following tasks:
--    4a) Retrieve all entries in the deposit table.
    SELECT * FROM Deposits;
--    4b) Retrieve the names of players who made a deposit on 03/24/24.
    SELECT Player FROM Deposits WHERE Date = '03/24/24';
--    4c) Retrieve the deposit amounts of players who made a deposit on 03/24/24.
    SELECT Deposit_Amount FROM Deposits WHERE Date = '3/24/24';
--    4d) Update the deposit amount of the player with the DepositID 3 to 1000.
    SELECT Deposit_Amount FROM Deposits WHERE DepositID = 3;
--    4e) Update the deposit date of the player with the DepositID 1 to 3/24/24.
    UPDATE Deposits SET Date = '3/24/24' WHERE DepositID = 1;
--    4f) Insert a new record into the deposits table with the player name set to 'Robert Pat', deposit amount '500', and deposit date 3/25/24.
    INSERT INTO Deposits (Player, Deposit_Amount, Date) VALUES ('Robert Pat', 500, '3/25/24');
--    4g) Add a new column called 'Deposit_Time' and autofill each entry with the time '12:00AM'.
    ALTER TABLE Deposits
        ADD COLUMN Deposit_Time TEXT DEFAULT '12:00AM';
--    4h) Delete the deposit with DepositID 2 from the Deposits table;
    DELETE FROM Deposits WHERE DepositID = 2;
--    4i) Delete the column called 'Deposit_Time'.
    ALTER TABLE Deposits
        DROP COLUMN Deposit_Time;
--    4j) Retrieve the details of the remaining deposits.
    SELECT * FROM Deposits;