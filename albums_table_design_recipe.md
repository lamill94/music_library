## 1. Extract nouns from the user stories or specification

>> User stories:

As a music lover,
So I can organise my records,
I want to keep a list of albums' titles.

As a music lover,
So I can organise my records,
I want to keep a list of albums' release years.

>> Nouns:

album, title, release year

## 2. Infer the Table Name and Columns

| Record                | Properties          |
| --------------------- | ------------------- |
| album                 | title, release year |

Name of the table (always plural): `albums`

Column names: `title`, `release_year`

## 3. Decide the column types

id: SERIAL
title: text
release_year: int

## 4. Write the SQL

>> file: music_library.sql

```sql

CREATE TABLE albums (
  id SERIAL PRIMARY KEY,
  title text,
  release_year int,
  artist_id int
);
```

## 5. Create the table

cd into seeds and run below bash command:

```bash
psql -h 127.0.0.1 music_library < music_library.sql
```

OR 

python seed_dev_database.py