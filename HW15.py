#Boying Tang
#IntroCS pd2
#HW15
#2014-03-11

#takes a numeric input g, representing a student¡¯s grade, and returns its letter grade equivalent
def gradeConv(g):
    
    if 100>=g>=90:
        return "A" 
    elif g>=80:
        return "B"
    elif g>=70:
        return "C"
    elif g>=65:
        return "D"
    elif g>=0:
        return "F"
    else:
        return "error"

print gradeConv(100)
print gradeConv(86)
print gradeConv(2)
print gradeConv(-1)
print gradeConv(101)

#takes a string input letterGrade and prints congratulatory or scolding messages
def passJudgement(letterGrade):
    if letterGrade=="B":
        return "Uh yeah. I'm out of phrase."
    elif letterGrade=="A":
        return "Asian fail, where's dat 102?"
    elif letterGrade=="C":
        return "C U 1N 7U70R1NG."
    elif letterGrade=="D":
        return "Disowned."
    elif letterGrade=="F":
        return "Fighting!"
    else:
        return "Wut? No comprendo."


print passJudgement("A")
print passJudgement("B")
print passJudgement("C")
print passJudgement("D")
print passJudgement("E")
print passJudgement("F")
print passJudgement("3")



    
