# Team -- Boying Tang, Nicole Sheynin, Nancy Li
# pd 2
# HW20 -- 000 000 111
# 2014-03-18

# takes a name written in First Last format, and returns the sassy version, as shown below
def bondify(name):
    x=0
    while name[x] !=" ":
        x+=1
        a=x+1
    while a < len(name):
        return name[a] 
        a+=1


print bondify("James, Bond")
