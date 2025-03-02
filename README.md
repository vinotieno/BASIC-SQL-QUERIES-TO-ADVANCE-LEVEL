# COURSE CONTENT

# SQL BASICS: 
- SELECT + FROM STATEMENT
- WHERE STATEMENTS
- GROUP BY + ORDER BY

# SQL INTERMEDIATE
- JOINS(INNER + OUTER + LEFT + RIGHT JOINS)
- CASE STATEMENT
- HAVING CLAUSE
- UPDATE + DELETE
- PARTITION BY

# ADVANCE SQL
- SUBQUERIES
- CTES



# Day 1 of Learning Basic Sql Queries

## SELECT-FROM-STATEMENT
- The SELECT statement is used to specify which columns of a database table should be included in the result.
- The "SELECT" keyword is used to specify the columns to be retrieved.
- "FROM" keyword is used to specify the table from which the data is to be retrieved.

## COMMANDS THAT CAN BE USED WITH THE SELECT COMMAND ARE: 
    asterisk (*), 
    TOP 10*, 
    DISTINCT, 
    COUNT, 
    AS, MAX, MIN, AVG 

### *
- The asterisk (*) is a wildcard character that represents all columns in the table.

### TOP
- Sometimes you would want to work with or see afew rows.
- using TOP commond would select only afew rows of your choice.
  
### DISTINCT
- Datasets often contain duplicate rows or values in a column.
- Combining SELECT with DISTINCT drops duplicates/ It returns the unique values.

### MAX  
- MAX() returns the maximum value in a numeric column.
  
### MIN
- MIN() returns the minimum value in a numeric column.
  
### AVG
- AVG(): AVERAGE calculates the arithmetic mean of a column.

### COUNT  
- COUNT() returns the number of rows in the table or group.

### AS
- To rename a column or a table when returning results, you can use the AS command to set an alias for your outputs.
  
### SUM
- SUM() returns the total of numeric values.




# Day 2 of Learning Basic Sql Queries

## WHERE STATEMENT
- The WHERE clause filters rows that match a certain condition.
- Limits the amount of data & specify what data.

## COMMANDS THAT CAN BE USED WITH THE WHERE COMMAND ARE: 
    =, <>,>,< ,>=,AND, OR, LIKE,NULL, NOT NULL, IN, %
    
    = equal to
    <> doesnot equal(except)
    > greater than
    < less than
    AND two things 
    OR only one
    % wild card after a letter or number means anywhere in the body but the letter must be at the beginning, before means at the beginning anywhere in the body that has that 
    letter.
    BETWEEN allows you to subset rows within a certain range, which makes WHERE clauses simpler and easier to read.
    example:
    SELECT *
    FROM films
    WHERE date BETWEEN 2020 AND 2022;

    IN The IN operator is a shorthand for multiple OR statements.
    LIKE The LIKE operator lets you search for patterns in a text column using special strings called wildcards. Wildcards let you find text strings that fit a specific 
    pattern.



# Day 3 of Learning Basic Sql Queries

## GROUP BY + ORDER BY  STATEMENT
- Both GROUP BY and ORDER BY are used for organizing data, but they serve different purposes.
- 
### GROUP BY
     GROUP BY – Used for Aggregation
     When you need summary statistics like counts, totals, or averages.
     It reduces multiple rows into one based on the grouped column.

 ### ORDER BY    
     ORDER BY – Used for Sorting
     Sorts the final output in ascending (ASC) or descending (DESC) order.
     Can be used with both aggregated and non-aggregated queries.
     Feature	                  GROUP BY	                                                ORDER BY
     Purpose	                  Groups rows for aggregation	                           Sorts final output
     Function	                  Used with COUNT(), SUM(), AVG()	                       Used with ASC or DESC
     Affects Output?	          Yes, reduces rows	No,                                    only changes order
     Position in Query	          Before ORDER BY	                                       Last in query


# Day 4 of Learning Intermediate Sql Queries

### Joins (Inner Joins, Outer Joins, Left Joins, Right Joins)

      JOINS (INNER JOINS,OUTER JOINS, LEFT JOINS, RIGHT JOINS) 
      Combining table based on sth they have in common
      Use JOIN when you need to retrieve data from related tables (i.e., foreign key relationshi


### INNER JOIN
      Returns rows that have common/matching values in both tables
      Returns What both tables have in common
      Returns only the matching records from both tables.
      Unmatched rows are excluded (i.e., no null values from either table)
      If a certain name appears in one table, it wont be returned at all.

### OUTER JOINS
      Returns all records from one or both tables, even if they don’t have a match.
      Fills missing values with NULL where no match is found.
#### Types of OUTER JOIN:
      LEFT JOIN (LEFT OUTER JOIN) → Returns all rows from the left table, plus matching rows from the right.
      RIGHT JOIN (RIGHT OUTER JOIN) → Returns all rows from the right table, plus matching rows from the left.
      FULL JOIN (FULL OUTER JOIN) → Returns all rows from both tables, filling in NULLs for missing matches.

### LEFT JOIN
      Returns all rows from the LEFT table, plus matching rows from the RIGHT table.
      If no match is found, NULL is returned for the RIGHT table’s columns.
### RIGHT JOIN
      Returns all rows from the RIGHT table, plus matching rows from the LEFT table.
      If no match is found, NULL is returned for the LEFT table’s columns.

### UNIONS
      Used to merge rows from two or more tables with similar structure.
      Retrieves separate sets of records that have the same columns.
      Works vertically (adds rows).
      UNION removes duplicates (use UNION ALL to keep duplicates).
      Use UNION when you need to merge results from similar tables (same columns but different records).



           Feature	                 UNION	                                                    JOIN
           Purpose     	          Combines rows from multiple tables	                       Combines columns from multiple tables
           Works on               Tables with similar columns	                               Tables with related keys (foreign key)
           Duplicates?	          Removes duplicates (UNION) or keeps them (UNION ALL)	       Shows all matching data
           Data Expansion	      Adds more rows	                                           Adds more columns




# Day 5 of Learning Intermediate Sql Queries

### CASE STATEMENT
      The CASE statement is used in SQL when you need conditional logic inside a query. 
      It helps create new categorized columns, replace values, or make calculations based 
      on conditions.

#### USES
     When Categorizing Data in a SELECT Statement-You can use CASE to create a new column based on conditions.
     When Using Conditional Calculations-You can use CASE to apply different calculations based on conditions.
     

# Day 6 of Learning Intermediate Sql Queries
### HAVING CLAUSE
     The HAVING clause is used to filter grouped records after applying the GROUP BY clause. It is similar to WHERE, but HAVING is specifically used with aggregated 
     functions (SUM(), COUNT(), AVG(), etc.).
     We must use HAVING because WHERE cannot filter aggregates.
     Used After grouping

#### When to Use HAVING
    When filtering after aggregation (e.g., after GROUP BY).
    When using aggregate functions (SUM(), COUNT(), AVG(), etc.).
    When filtering groups of records, not individual rows.

    Example:
    filtering groups after aggregation:
    
    SELECT Department, SUM(Salary) AS Total_Salary
    FROM Employees
    GROUP BY Department
    HAVING SUM(Salary) > 100000;


    Filtering by COUNT()
    SELECT City, COUNT(Employee_ID) AS Employee_Count
    FROM Employees
    GROUP BY City
    HAVING COUNT(Employee_ID) > 10;

    Feature                      	WHERE	                   HAVING
    Used for filtering	            Before aggregation	       After aggregation
    Works with	                    Individual rows	           Groups of data (GROUP BY)
    Can use aggregate functions?	No	                       Yes
    Example                      	WHERE Salary > 50000	   HAVING SUM(Salary) > 10000
    


     Example:
     SELECT Department, SUM(Salary) AS Total_Salary
     FROM Employees
     WHERE Salary > 50000   -- Filters individual rows BEFORE grouping
     GROUP BY Department
     HAVING SUM(Salary) > 200000;  -- Filters groups AFTER aggregation



 # Day 7 of Learning Intermediate Sql Queries

 ## INSERT + UPDATE + DELETE


     INSERT:
     INSERT	Adds new records into a table
     Always specify column names and values.
     Use INSERT INTO table_name VALUES (...) only if inserting values into all columns.
     

     UPDATE:
     UPDATE	Modifies existing records in a table
     Used to change existing records in a table.
     You have to set what you want to modify.
     Always use WHERE to update specific records, otherwise all rows will be updated.
     Can update multiple columns


     DELETE
     DELETE	Removes records from a table
     Used to remove records from a table.
     Always use WHERE to avoid deleting all rows.
     To delete all records but keep table structure:


 # Day 8 of Learning Intermediate Sql Queries  

 ## PARTITION BY
     The PARTITION BY clause is used in window functions to divide the result set into partitions (groups) and perform calculations within each partition separately, rather 
     than across the entire dataset.

     It is similar to GROUP BY, but unlike GROUP BY, it does not collapse rows. Instead, it keeps all rows while applying the function within partitions.


     Use PARTITION BY when: 
     You need calculations within each group while keeping all rows.
     You want running totals, ranking, or comparisons without grouping rows together.
     You need window functions like SUM(), AVG(), RANK(), DENSE_RANK(), ROW_NUMBER().


 # Day 9 of Learning Advance Sql Queries 

## SUBQUERY
      A subquery (also known as a nested query or inner query) is a query inside another SQL query. 
      It is used to retrieve data that will be used in the main query.
      
      Types:
      Single-row subquery: Returns one value (e.g., =, <, >, <=, >=, <>)
      Multi-row subquery: Returns multiple values (e.g., IN, ANY, ALL)
      Correlated subquery: Depends on the outer query for each row processed
      Nested subquery: A subquery within another subquery.


      When to Use a Subquery:
      When retrieving data for filtering (WHERE, HAVING).
      When computing aggregate values for comparisons.
      When using a subquery instead of multiple joins (in some cases).

      

# Day 9 of Learning Advance Sql Queries 

## STRING FUNCTION
     SQL provides several string functions to manipulate text data. 
     These functions are useful for formatting, searching, extracting, replacing, and modifying strings.

     Function:Description::Example:Output
     1.LEN() / LENGTH():
     Returns the length of a string:	
     SELECT LEN('Hello');	5


     2.LOWER():
     Converts text to lowercase
     SELECT LOWER('SQL Functions');	sql functions


     
     3.UPPER()	
     Converts text to uppercase
     SELECT UPPER('Hello');	HELLO

     
     4.LTRIM()	
     Removes leading spaces	
     SELECT LTRIM(' Hello');	'Hello'


     
     5.RTRIM()
     Removes trailing spaces	
     SELECT RTRIM('Hello ');	'Hello'

     
     6.TRIM()	
     Removes both leading & trailing spaces	
     SELECT TRIM(' Hello ');	'Hello'

     
     7.SUBSTRING()	
     Extracts a portion of a string	
     SELECT SUBSTRING('Database', 1, 4);	'Data'



     8.LEFT()	
     Returns the left part of a string
     SELECT LEFT('SQL Functions', 3);	'SQL'


     
     9.RIGHT()	
     Returns the right part of a string
     SELECT RIGHT('Functions', 4);	'tions'


     
     10.CHARINDEX()	
     Finds position of a substring
     SELECT CHARINDEX('a', 'Database');	2


     
     11.PATINDEX()	
     Finds pattern in a string	
     SELECT PATINDEX('%b%', 'Database');	5


    
     12.REPLACE()	
     Replaces part of a string	
     SELECT REPLACE('SQL is cool', 'cool', 'awesome');	'SQL is awesome'


     
     13.STUFF()	
     Deletes and inserts text in a string	
     SELECT STUFF('Hello', 2, 3, 'i');	'Hi'


     
     14.CONCAT()	
     Joins multiple strings
     SELECT CONCAT('SQL ', 'Functions');	'SQL Functions'



      When to Use String Functions:
      - Cleaning & formatting text data
      - Searching & extracting specific text patterns
      - Concatenating multiple string values
      - Replacing, trimming, or masking sensitive data.







     





     




