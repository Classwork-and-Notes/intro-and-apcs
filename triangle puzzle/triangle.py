f = open('triangle.txt', 'r')
info = [line.split() for line in f]

#finds largest possible sum 
def findSum(row, position):
	if (row == len(info) - 1):
		return int(info[row][position])
	else:
		if (position >= 0):
			a = findSum(row + 1, position)
		if (position < len(info[row])):
			b = findSum(row + 1, position + 1)
	if (a > b):
		return a + int(info[row][position])
	else:
		return b + int(info[row][position])

#print len(info)
print findSum(0,0)