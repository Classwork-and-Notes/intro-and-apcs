#Team -- Boying Tang, Miki Steele
#IntroCS2 pd 02
#HW28 -- The Reigning Champion... 
#2014-03-31

# takes a list L containing only numeric elements, and returns the position (index) of the least value
def minPos(L):
        index=0
        check=1
        if len(L)==1:
            return index
        while check<len(L):
            if L[index]>L[check]:
                index=check
                if check+1 <len(L):
                    check+=1
            else:
                check+=1
        return index


print minPos( [1,4,3,5,2] )
print minPos( [3] )
print minPos( [5,4,3,2,1] )

##
##
##def minPos(L):
##        index=0
##        min=0
##        if len(L)==1:
##            return L.index(L)
##        elif L[index]>L[index+1]:
##            return minPos(L[index+1:])
##        else:
##            return minPos([L[index]]+L[index+2:])
