<div align="center">
  <h3 align="center">Summarizing data</h3>
</div>

## Note: Example contains in .sql file

<details open>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#introduction">Introduction</a>
    </li>
  </ol>
</details>

## Introduction

## Aggregate Functions
SQL Aggregate functions are functions where the values of multiple rows are grouped as input on certain criteria to form a single value result of more significant meaning. It is used to summarize data, by combining multiple values to form a single result.

The most commonly used SQL aggregate functions are:

`MIN()` - returns the smallest value within the selected column
`MAX()` - returns the largest value within the selected column
`COUNT()` - returns the number of rows in a set
`SUM()` - returns the total sum of a numerical column
`AVG()` - returns the average value of a numerical column

## MIN()
The MIN() function returns the smallest value of the selected column.

```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```

## MAX()
The MAX() function returns the largest value of the selected column.

```sql
SELECT MAX(column_name)
FROM table_name
WHERE condition;
```

## SUM()
The SUM() returns the SUM of the total column

```sql 
SELECT SUM(column_name)
FROM table_name
WHERE condition;
```

## AVG()
The AVG() function returns the average value of a numeric column.

```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;
```

## GROUP BY()
The GROUP BY statement groups rows that have the same values into summary rows

```sql 
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
```

### HAVING()
The HAVING clause was introduced in SQL to allow the filtering of query results based on aggregate functions and groupings, which cannot be achieved using the WHERE clause that is used to filter individual rows.

```sql
SELECT col_1, function_name(col_2)
FROM tablename
WHERE condition
GROUP BY column1, column2
HAVING Condition
ORDER BY column1, column2;
```

### ROLL UP
The ROLLUP operator enhances the capabilities of the GROUP BY clause by enabling the computation of subtotals and grand totals for a set of columns. 

```sql 
SELECT column, aggregate_function(column)
FROM table
GROUP BY ROLLUP (column)
```