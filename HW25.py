# Team Toady -- Boying Tang, Sam Shneyder, Miki Steele
# pd 2
# HW25 -- Further Explorations in Toy Encryption
# 2014-03-26

#from HW24
def rot13Chr(ch):
    Upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    Lower="abcdefghijklmnopqrstuvwxyz"
    result=""
    while Upper.find(ch) != -1:
        result=Upper.find(ch)+13
        if result>len(Upper)-1:
            return Upper[Upper.find(ch)-13]
        else:
            return Upper[Upper.find(ch)+13]
    while Lower.find(ch) != -1:
        result=Lower.find(ch)+13
        if result>len(Lower)-1:
            return Lower[Lower.find(ch)-13]
        else:
            return Lower[Lower.find(ch)+13]
        
#takes a string input -- potentially including spaces, punctuation and a mixture of upper- and lowercase letters -- and returns its rot13 encoding

def rot13(phrase):
    num=0
    result=""
    Upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    Lower="abcdefghijklmnopqrstuvwxyz"
    while num<len(phrase):
        if Upper.find(phrase[num]) == -1 and Lower.find(phrase[num]) == -1:
            result+= phrase[num]
            num+=1
        else:
            result+=rot13Chr(phrase[num])
            num+=1
    return result
print rot13("Justin Bieber? Like, OMG!!! He's my hero!")
print rot13('Justin Bieber')

#The alphabet is defined in both uppercase and lowercase
#result is appended to so as to return the shifted string
#num starts at the zeroith letter
#as long as move is less than 26 (so that you don't shift back
#to the original string), the function searches through both alphabets
#Once the case is found, each letter will be shifted 1 and appended to result
#This process repets until we have 25 shifted strings
#The printed strings have to be looked over by a human to find the real meaning 

def challenge(x):
    Upper="ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
    Lower="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
    result=""
    move=1
    num=0
    while move<26:
        while num<len(x):
            if Upper.find(x[num]) != -1:
                result += Upper[Upper.find(x[num])+move]
                num+=1
            else:
                result += Lower[Lower.find(x[num])+move]
                num+=1
        print str(move)+" "+result
        result=""
        num=0
        move+=1
    return result



print challenge("udm")
print "11, fox \n"
print challenge("ufwyd")
print "21, party \n"
print challenge("deoh")
print "23, able \n"


