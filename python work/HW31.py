#Boying Tang,
#IntroCS2 pd 02
#HW31 -- Come Together
#2014-04-09

#removes the negative numbers from list L, assumed to contain only numeric elements. (Modifies L; does not create a new list.)
def rmNegatives(L):
    index=0
    for num in L:
        if num<0:
            L=L[:index] + rmNegatives(L[index+1:])
        index+=1
    return L

print rmNegatives( [5,-4,3,-2,1] )
print rmNegatives( [0,1,2,3] )    
#returns a list of the first n Fibonacci numbers, starting with 0 as the 0th term, 1 as the 1st term, 1 as the 2nd term, and so on
def listOFib(n):
    L=[0,1]
    index=2
    for num in range(0, n-1):
        num=L[index-1]+L[index-2]
        L+= [num]
        index+=1
    return L

print listOFib(1)
print listOFib(2)
print listOFib(3)
print listOFib(4)
#returns a string comprised of list L's elements, in order, with spaces between. Assumes L contains only string elements
def sentify(L):
    result=''
    for word in L:
        result+=word +" "
    return result

print sentify( ["this", "is", "how", "we", "do"] )
