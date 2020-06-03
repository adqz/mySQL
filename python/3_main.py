import sys
import json
import mysql.connector as mysql

def main(credentialsPath):
    credentials = None
    try:
        with open(credentialsPath) as f:
            credentials = json.load(f)
    except Exception as e:
        print(e.message, e.args)
        return
    
    if credentials:
        # Connect to the DB
        conn = mysql.connect(
            user     = credentials['username'],
            password = credentials['password'],
            database = 'mySqlPython',
            host     = 'localhost'
        )
    else:
        print('Connection unsuccessful. Check Username and password')
        return
    
    cursor = conn.cursor()
    # Execute the query
    cursor.execute("SELECT * FROM taula")
    rows = cursor.fetchall()
    for entry in rows:
        print(entry)


if __name__ == "__main__":
    main('./credentials.json')