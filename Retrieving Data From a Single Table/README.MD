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
