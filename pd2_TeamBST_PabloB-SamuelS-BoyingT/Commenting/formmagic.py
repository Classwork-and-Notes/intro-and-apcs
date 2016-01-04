#!/usr/bin/python
print "Content-Type:text/html\n"

print "<!DOCTYPE html>"
print "<html>"
print "<head> <title>"

print "Submission"

print "</title> </head>"
print "<body>"

print '<a href="index.html">Your post has been submitted. Click here to return to last page.</a>'

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

comments=open('comments.txt','a')
comments.write('<p>'+params['comment']+'</p>')
comments.close()

comments=open('comments.txt').read()
html=open('index.html','w')
#========correct np=======

html.write(""" <html>

    <head>

    <title>BST-Chan!</title>

    </head>

    <body>""" +comments+  

    '''<form name="input" method="GET" action="formmagic.py">
    <br>
    Comment:
    <br>
    Font: 
    <input type="checkbox" name="font" value="bold"> Bold 
    <input type="checkbox" name="font" value="italics">Italics 
    <input type="checkbox" name="font" value="underline"> Underline
    <br>
    <textarea rows="3" name="comment" cols="23"></textarea>
    <br>
    <input type="submit" value="Submit">
    </form>

    </body>
    </html>''')

comments.close()
html.close()

print "</body>"
print "</html>"
