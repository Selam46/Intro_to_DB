import mysql.connector
import os
from mysql.connector import Error

def create_database():
    try:
        # Get credentials from environment variables
        mysql_user = os.environ.get('MYSQL_USER')
        mysql_password = os.environ.get('MYSQL_PASSWORD')

        # Connect to MySQL server
        connection = mysql.connector.connect(
            host='localhost',
            user=mysql_user,
            password=mysql_password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as e:
        print(f"MySQL Error: {e}")

    except Exception as e:
        print(f"General Error: {e}")

    finally:
        if 'connection' in locals() and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()
