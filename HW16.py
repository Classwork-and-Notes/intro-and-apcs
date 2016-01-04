import math
#Boying Tang
#IntroCS pd2
#HW16
#2014-03-12

#discriminant
def discriminant (a,b,c):
    return (b**2) - (4*a*c)


#takes numeric inputs a, b, c -- representing coefficients of a quadratic equation in standard form -- and returns the number of real roots of said equation
def numRealRoots(a,b,c):
    if discriminant(a,b,c) > 0:
         return 2
    elif discriminant(a,b,c) == 0:
         return 1
    elif discriminant(a,b,c) < 0:
         return 0
        
print numRealRoots(1,2,3)
print "...should be 0"
print numRealRoots(2,4,2)
print "...should be 1"
print numRealRoots(1,3,2)
print "...should be 2"

#takes numeric inputs a, b, c -- representing coefficients of a quadratic equation in standard form -- and prints the roots, if any. Uses numRealRoots(a,b,c) as a helper function
def quadSolver(a,b,c):
    if numRealRoots(a,b,c)==0:
        return "No real roots"
    elif numRealRoots(a,b,c)==1:
        return ( -b - math.sqrt(discriminant(a,b,c))) / (2 * a)
    else:
        return ( -b - math.sqrt(discriminant(a,b,c))) / (2 * a), ( -b + math.sqrt(discriminant(a,b,c))) / (2 * a)
print quadSolver(1,2,3)
print "...should be 'No real roots'"
print quadSolver(1,4,4)
print "...should be -2"
print quadSolver(1,-2,-15)
print "...should be -3 5"
