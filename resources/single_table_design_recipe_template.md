# Single Table Design Recipe Template

## 1. Extract nouns from the user stories or specification

```
# EXAMPLE USER STORY:
# (analyse only the relevant part - here the final line).

As a music lover,
So I can organise my records,
I want to keep a list of albums' titles.

As a music lover,
So I can organise my records,
I want to keep a list of albums' release year.
```

```
Nouns:

album, title, release year
```

## 2. Infer the Table Name and Columns

Put the different nouns in this table. Replace the example with your own nouns.

| Entity                | Property            |
| --------------------- | ------------------  |
| album                 | title, release year

Name of the table (always plural): `albums` 

Column names: `title`, `release_year`

## 3. Decide the column types.

[Here's a full documentation of PostgreSQL data types](https://www.postgresql.org/docs/current/datatype.html).

Most of the time, you'll need either `text`, `int`, `bigint`, `numeric`, or `boolean`. If you're in doubt, do some research or ask your peers.

Remember to **always** have the primary key `id` as a first column. Its type will always be `SERIAL`.

```
# EXAMPLE:

id: SERIAL
title: text
release_year: int
```

## 4. Write the SQL.

```sql
-- EXAMPLE
-- file: albums_table.sql

-- Replace the table name, columm names and types.

CREATE TABLE albums (
  id SERIAL,
  title text,
  release_year int
);
```

## 5. Create the table.

```bash
psql -h 127.0.0.1 database_name < albums_table.sql
```

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=resources/single_table_design_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=resources/single_table_design_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=resources/single_table_design_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=resources/single_table_design_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=resources/single_table_design_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->