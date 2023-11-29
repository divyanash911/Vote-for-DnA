# Vote-for-DnA
DnA project repository for group project by Divyansh , Hemang , Aniket , Sanfat



# Instructions to work on the database : 
<ul>
<li>Database name is 'COMPANY' which would need to be created in your local MySQL and then data from dump.sql should be imported</li>
<li>Always import database from dump.sql and then use python to work and modify the database.</li>
<li>After completing some part of the work use 

```
mysqldump -u "root" -p "COMPANY" > dump.sql 
``` 
</li>
<li>To import (update your database use the below command)

```
mysql -u "root" -p "COMPANY" < dump.sql
```
</li>
</ul>