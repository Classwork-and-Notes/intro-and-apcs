#!/usr/bin/python
print "Content-Type:text/html\n"

print "<!DOCTYPE html>"
print "<html>"
print "<head> <title>"

print "Submission"

print "</title> </head>"
print "<body>"

import csv
import cgi

def FStoD():
    '''
    Converts return val of FieldStorage() into a standard dictionary
    '''
    d = {}
    formData = cgi.FieldStorage()
    for k in formData.keys():
        d[k] = formData[k].value
    return d

params=FStoD()
username=params["user"]
password=params["passwd"]

inStream = open('accountData.csv', 'r')
listOfStrings=inStream.readlines()
changes = [
    [username,password],
    ]

try:
    if ',' in username or ',' in password:
        print "THERE'S COMMAS IN YOUR CREDENTIALS. no commas pls :)"
    else:
        user=[] #list of usernames
        for i in listOfStrings:
            pair= i[:-1].split(',')
            user+=[pair[0]] #adds to list of usernames
        if username in user:
            print "username is taken! :( try again with another"
        else:
            with open('accountData.csv', 'ab') as f:
                    writer = csv.writer(f)
                    writer.writerows(changes)
                    print "success!"
except:
    print "whoops, something went wrong. email us at bstchanhelp@gmail.com and we'll try to fix it"

inSream.close()
print "</body>"
print "</html>"
