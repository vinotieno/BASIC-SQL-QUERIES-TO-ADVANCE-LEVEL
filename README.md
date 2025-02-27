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



 









     




