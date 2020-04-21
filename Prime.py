#!/usr/bin/python

answer = 0
MAX = 1000
seed = 1


def find3and5(num):
	if(num < MAX):
		if((num % 3 == 0) or (num % 5 == 0)):
			answer += num

		#answer += find3and5(++num)

		#return answer
	
xyz = 0 
xyz = find3and5(1)
print xyz
		

result = 0
for i in range(1,1000):
    if i % 3 == 0 or i % 5 == 0:
        result = result + i
print str(result)

