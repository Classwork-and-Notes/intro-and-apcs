import math
# Boying Tang
# pd 2
# HW18 -- Loop Loop Loop
# 2014-03-14

# takes a positive integer n and returns the sum of its digits
def  sumDigits(n):
    while n>0:
        return n%10 + (sumDigits(n//10))
    return 0
print sumDigits(1234)
print sumDigits(1230)

#takes a positive integer n and prints each integer from 1 to n, inclusive, along with its square. The number and its square should appear on the same line


def squares(n):
    ctr = 1
    while ctr <= n:
        print ctr,ctr*ctr
        ctr = ctr + 1
    
	
squares(2)
squares(5)

#takes a positive integer n and returns the sum of the perfect squares between 1 and n, inclusive
def sumPerfSqs(n):
    if n==1:
        return 1
    elif math.sqrt(n)%1==0:
        return n + sumPerfSqs(n-1)
    else:
        return sumPerfSqs(n-1)

print sumPerfSqs(5)

