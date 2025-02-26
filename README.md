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
     Feature	                  GROUP BY	                                               ORDER BY
     Purpose	                  Groups rows for aggregation	                           Sorts final output
     Function	                  Used with COUNT(), SUM(), AVG()	                       Used with ASC or DESC
     Affects Output?	          Yes, reduces rows	No,                                    only changes order
     Position in Query	          Before ORDER BY	                                       Last in query


# Day 4 of Learning Intermediate Sql Queries

### Joins (Inner Joins, Outer Joins, Left Joins, Right Joins)
















