#Boying Tang,
#IntroCS2 pd 02
#HW30 -- The Same But Different
#2014-04-08

# takes a list L containing only numbers, and returns the sum of L¡¯s elements
def  listSum(L):
        some=0
        for w in L:
               some+=w 
        return some


print listSum( [0,1,2,3] )

#modifies list L by doubling each of its elements. Assumes L contains only numeric elements
def doublify(L):
        result=[]
        for w in L:
                result+=str(w*2)
        L=result
        return L


x = [0,1,2,3]
print doublify(x)

#takes a list L containing only numeric elements, and returns the least value
def minVal(L):
        minval=L[0]
        for w in L:
                if w<minval:
                        minval=w
        return minval

print minVal( [3] )
print minVal( [5,4,3,2,1] )
