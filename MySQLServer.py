import mysql.connector

try:
    mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="Password"
)
except mysql.connector.Error: 
    print("Failed to connect to the database")

mycursor = mydb.cursor()

# Create a table named `alx_book_store` (if it doesn't exist)
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")

print()