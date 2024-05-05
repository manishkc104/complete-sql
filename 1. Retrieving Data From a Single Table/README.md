<div align="center">
  <h3 align="center">Retrieving Data From a Single Table</h3>
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

### SELECT Statement

The `SELECT` statement is used to select data from a database.

```sql
SELECT column1, column2, ...
FROM table_name;
```

We can either fetch the entire table or according to specific rules. The returned data is stored in a results table.

### WHERE Clause

`WHERE` keyword is used for fetching filtered data in a result set. It is used to fetch data according to the criteria.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

`>`,`>=`,`<`,`<=`,`=`,`<>`,`BETWEEN`,`LIKE`,`IN` are the list of operators that can be used with `WHERE` clause.

### AND, OR and NOT operators

`AND`, `OR`, `NOT` operators are basically used with WHERE clause to retrieve data from table by filtering it.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
```

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
```

```sql
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
```

### IN Operator

The `IN` operator allows you to specify multiple values in a `WHERE` clause.

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
```

The SQL IN operator filters data based on a list of specific values. In general, we can only use one condition in the WHEN clause, but the IN operator allows us to specify multiple values.

### BETWEEN Operator

The `BETWEEN` operator selects values within a given range. The values can be numbers, text, or dates.

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```
### LIKE Operator

The `LIKE` operator is used in a `WHERE` clause to search for a specified pattern in a column.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
```

### IS NULL Operator

The `IS NULL` operator filters the null data present in the column  

```sql
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
```

### ORDER BY Operator

`ORDER BY` operator is used to sort the data in either ascending or descending order.

```sql SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
```

### LIMIT Clause

`LIMIT` clause id used to specify the number of records that needs to be returned.

```sql
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;
```
