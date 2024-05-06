<div align="center">
  <h3 align="center">Inserting updating and deleting data</h3>
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

## Insert Into
The INSERT INTO statement is used to insert new records in a table.

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

```sql
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
```
## Creating a copy of the table
There may be a situation when you just want to create an exact copy or clone of an existing table to test or perform something without affecting the original table.

```sql
INSERT INTO new_table SELECT * FROM original_table;
```



