import sys
import json
import time
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
        cursor = conn.cursor()
    else:
        print('Connection unsuccessful. Check Username and password')
        return

    twitterUsername = 'Boss'
    twitterTweet = '@AndySamberg Like a Boss'

    cursor.execute("INSERT INTO taula (time, username, tweet) VALUES (%s, %s, %s)",
                    (time.time(), twitterUsername, twitterTweet))

    conn.commit()
    print_table(cursor)

def print_table(cursor):
    cursor.execute("SELECT * FROM taula")
    rows = cursor.fetchall()
    for row in rows:
        print(row)

if __name__ == "__main__":
    '''
    The credentials file's structure should be:
    {
        "username": username,
        "password": password
    }
    '''
    main('./credentials.json')