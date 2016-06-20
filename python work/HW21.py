#Boying Tang
# pd 2
# HW21 -- Clever Problem Solving
# 2014-03-19

PROBLEM 1 -- Multiples of 3 and 5
def multi35():
    tx=1 #multiple of three
    fx=1 #multiple of five
    bx=1 #multiples of 3 and 5
    total=0
    while 3*tx<1000:#+multiples of 3 under 1000
        total+=3*tx
        tx+=1
    while 5*fx<1000:#+multiples of 5 under 1000
        total+=5*fx
        fx+=1
    while 15*bx<1000:#-multiples of 15 under 1000
        total-=bx*15
        bx+=1
    return total

print multi35()

def smallestmulti():
    x=1 
    num=1 
    while x<=20: 
        while num%x != 0: 
            num+=1 
            x=1 
        x+=1
    return num

print smallestmulti()

def evenfibnums():
    in1=1
    in2=1
    result=0
    answer=0
    while result<4000000:
        result=in1+in2
        in1=in2
        in2=result
        while result%2 ==0:
            answer+= result
            result=1
    return answer

print evenfibnums()


        






    
