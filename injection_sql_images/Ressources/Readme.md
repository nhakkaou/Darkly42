# How I found it

There is Injection sql In Search Image page so i use this query to get all tables
`1 UNION SELECT table_name, column_name FROM information_schema.columns`
i found a table call list_images i get all informations iin this table and i found the flag in
