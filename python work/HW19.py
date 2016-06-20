# Team -- Boying Tang, Nicole Sheynin, Nancy Li
# pd 2
# HW19 -- Stringy Loops
# 2014-03-17

#takes 2 numeric inputs and prints a message like that shown below
def addMultPrint(a,b):
    print "the sum of " +str(a)+ " and " +str(b)+ " is " +str(a+b)
    print "their product is " +str(a*b)

addMultPrint(1,2)
#takes 2 numeric inputs and returns a string of HTML code
def addMultHTML(a,b):
    return "the <i>sum</i> of " +str(a)+ " and " +str(b)+ " is <b>" +str(a+b)+ """</b>
their <i>product</i> is <b>""" +str(a*b)+ "</b>"

print addMultHTML(1,2)
#takes 2 numeric inputs and returns a string of HTML code that will render a table
def  sumDigits(n):
    while n>0:
        return n%10 + (sumDigits(n//10))
    return 0
        
def tablefy(n):
    print """<table>
    <tr>
        <th> n </th>
        <th> n^2 </th>
        <th> SumDigits </th>
    </tr>
    <tr>"""
    ctr = 1
    while ctr <= n:
        global a
        a=ctr
        print "<tr><td>" +str(ctr)+ "</td>","<td>" +str(ctr*ctr)+ "</td>","<td>" +str (sumDigits(a*a))+ "</td></tr>" 
        ctr += 1
    return "</table>"
        
print tablefy(2)
 
