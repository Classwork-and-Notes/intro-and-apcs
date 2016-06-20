# Boying Tang
# IntroCS2 pd 2
# HW22 -- Find, Slice, Dice
# 2014-03-20

#takes a name written in First Last format, and returns the sassy version
def bondify(name):
    chara=name.find(" ")+1
    return name[chara:]+", " + name

print bondify("James Bond")
print "...should be Bond, James Bond"

#takes 3 string inputs and replaces any occurrences of q in s with r. If there is no occurrence of q in s, then s is returned unchanged
def replace(s,q,r):
    while s.find(q) != -1:
        first=s.find(q)
        rest=s[first:]
        space=rest.find(" ")
        before=s[:first]
        after=s[space:]
        return before + r + after

    return s

print replace ("Winter is coming", "Winter", "Spring")
print "...should be Spring is coming"  
print replace("Mice run this planet", "mice", "dolphins")
print "...should be Mice run this planet"

#returns a string of valid HTML code generating a 2-column, 53-row table. This table will show the letters of the alphabet and their associated ASCII value. Letters on the left, numbers on the right
def ASCII():
    print """<table>
    <tr>
        <th> Letters </th>
        <th> Numbers </th> 
    </tr>
    <tr>"""
    Alpha="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    ctr = 0
    while ctr <= 25:
        print "<tr><td>" +Alpha[ctr]+ "</td>","<td>" +str(ctr+65)+ "</td></tr>" 
        ctr += 1
    while ctr<=len(Alpha):
        print "<tr><td>" +Alpha[ctr]+ "</td>","<td>" +str(ctr+71)+ "</td></tr>"
        ctr += 1
    return "</table>"


ASCII()
