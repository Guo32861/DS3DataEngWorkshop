import sqlite3
import csv

## ------------------------------- Reading CSV FILES AS DICTIONARIES ------------------------------
with open('NEW_STAB52.csv', 'r') as B52file:
    csv_reader = csv.DictReader(B52file)
    B52 = [row for row in csv_reader]

with open('NEW_STAB57.csv', 'r') as B57file:
    csv_reader = csv.DictReader(B57file)
    B57 = [row for row in csv_reader]

with open('NEW_STAC62.csv', 'r') as C62file:
    csv_reader = csv.DictReader(C62file)
    C62 = [row for row in csv_reader]

# Perhaps print a few of them to show the class

print(B52)
print(B57)
print(C62)


## ------------------------------------- Opening the Database --------------------------------------
db = sqlite3.connect('ACORN.db')
cursor = db.cursor()
## This is pretty similar to how file readers work in opening a file and placing a "cursor" on the file
## This cursor functions more like a session for sqlite databases

## ---------------------------------------- Updating STAB52 ----------------------------------------
for student in B52:
    query = '''UPDATE STAB52_RAW 
    SET 
    Quiz1 = {Quiz1}, 
    Quiz2 = {Quiz2}, 
    Quiz3 = {Quiz3}, 
    Quiz4 = {Quiz4}, 
    Quiz5 = {Quiz5}, 
    Quiz6 = {Quiz6}, 
    Midterm = {Midterm}, 
    Final = {Final},
    CRNCR = "{CRNCR}"
    WHERE StudentNumber == {StudentNumber}
    '''.format(**student) ## kwargs = keyword arguments

    ## Notice that these elements are strings and not integers
    ## Why is this ok?
    ## SQL Queries are strings anyway, once it's joined onto the string,
    ## it will look like an int again

    ## Notice I enclosed CRNCR in quotes. Why is that? (reasons are above)

    cursor.execute(query)

db.commit() ## Remember our commit changes button in DB Browser?

## ---------------------------------------- Updating STAB57 ----------------------------------------
for student in B57:
    query = '''UPDATE STAB57_RAW 
    SET 
    A1 = {A1},
    A2 = {A2},
    A3 = {A3},
    Midterm = {Midterm}, 
    Final = {Final},
    CRNCR = "{CRNCR}"
    WHERE StudentNumber == {StudentNumber}
    '''.format(**student) 

    cursor.execute(query)

db.commit()

## ---------------------------------------- Updating STAC62 ----------------------------------------
for student in C62:
    query = '''UPDATE STAC62_RAW 
    SET 
    TermTest1 = {TermTest1},
    TermTest2 = {TermTest2},
    Final = {Final},
    CRNCR = "{CRNCR}"
    WHERE StudentNumber == {StudentNumber}
    '''.format(**student) 

    cursor.execute(query)

db.commit()












