#!/usr/bin/python
print "Content-Type: text/html\n"
print ""

print "<!DOCTYPE html>"
print "<!-- TEMPLATE FOR PUBLISHED HTML-GENERATING PYTHON CODE -->"

#Credits to Team Blue for template

print "<html>"
print "<head> <title>"

print "Test Data"

print "</title> </head>"
print "<body>"

import os
dictionary=os.environ

def Tabl(string):
    retstr="<table border=1>"
    rows=string.split("\n")
    del rows[-1]
    for line in rows: 
        row="<tr>" 
        l=line.split(",") 
        for item in l: 
            row+="<td>"+str(item)+"</td>" 
        row+="</tr>" 
        retstr+=row 
    return retstr 

def enviro():
    retstr=""
    for k,v in dictionary.items():
        retstr+=k+","+v+"<\n"
    return retstr

print Tabl(enviro())

print "</body>"
print "</html>"
