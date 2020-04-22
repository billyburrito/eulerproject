from functools import reduce

def factors(n):
    return set(reduce(list.__add__, ([i, n//i] for i in range(1, int(n**0.5) + 1) if n % i == 0)))

val = 0
for x in range(1,100000):
    val += x
    if (len(factors(val)))>= 500:
        print(val)
