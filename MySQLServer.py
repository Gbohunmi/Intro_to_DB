import mysql.connector

# Database connection details (replace with your own)
mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="Password"
)

mycursor = mydb.cursor()

# Create a table named `alx_book_store` (if it doesn't exist)
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")

print()