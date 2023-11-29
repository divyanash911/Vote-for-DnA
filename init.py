import pymysql
import pymysql.cursors

# Connect to the database

connection = pymysql.connect(host='localhost', user = "root" , password = "password" , cursorclass=pymysql.cursors.DictCursor)


with connection.cursor() as cur:
    query = "USE ELECTION"
    cur.execute(query)

    
