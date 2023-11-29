import pymysql
import pymysql.cursors

# Connect to the database

connection = pymysql.connect(host='localhost', user = "test" , password = "password" , cursorclass=pymysql.cursors.DictCursor)


with connection.cursor() as cur:
    query = "USE COMPANY"
    cur.execute(query)

    
