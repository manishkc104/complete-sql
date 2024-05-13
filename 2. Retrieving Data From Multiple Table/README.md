<div align="center">
  <h3 align="center">Retrieving Data From a Multiple Table</h3>
</div>

## Note: Example contains in retrieving_data_from_multiple_tables.sql file

<details open>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#introduction">Introduction</a>
    </li>
  </ol>
</details>

## Introduction

### Inner join

The SQL Inner Join is a type of join that combines multiple tables by retrieving records that have matching values in both tables (in the common column).

```sql
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```

### Self Join

A self join is same as the regular join, but the table is joined with itself.

```sql
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
```

### Left Join

The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.

```sql
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
```

### Right Join

The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.

```sql
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
```

### Union

The UNION operator is used to combine the result-set of two or more SELECT statements.

```sql
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;
```
