import numpy

def leftup(first,last):
    if (last - 3 >= 0)and(first - 3 >= 0):
        list = []
        for val in range(4):
            list.append(int(z[first-val][last-val]))
        return numpy.prod(list)
    else:
        return 0

def leftdown(first,last):
    if (first + 3 < 20)and(last - 3 >= 0):
        list = []
        for val in range(4):
            list.append(int(z[first+val][last-val]))
        return numpy.prod(list)
    else:
        return 0

def rightup(first,last):
    if (first - 3 >= 0)and(last + 3 < 20):
        list = []
        for val in range(4):
            list.append(int(z[first-val][last+val]))
        return numpy.prod(list)
    else:
        return 0

def rightdown(first,last):
    if (last + 3 < 20)and(first + 3 < 20):
        list = []
        for val in range(4):
            list.append(int(z[first+val][last+val]))
        return numpy.prod(list)
    else:
        return 0

def left(first,last):
    if (last - 3 >= 0):
        list = []
        for val in range(4):
            list.append(int(z[first][last-val]))
        return numpy.prod(list)
    else:
        return 0

def right(first,last):
    if (last + 3 < 20):
        list = []
        for val in range(4):
            list.append(int(z[first][last+val]))
        return numpy.prod(list)
    else:
        return 0

def up(first,last):
    if (first - 3 >= 0):
        list = []
        for val in range(4):
            list.append(int(z[first-val][last]))
        return numpy.prod(list)
    else:
        return 0

def down(first,last):
    if (first + 3 < 20):
        list = []
        for val in range(4):
            list.append(int(z[first+val][last]))
        return numpy.prod(list)
    else:
        return 0

def check(first, last):
    vals = []
    vals.append(left(first,last))
    vals.append(right(first,last))
    vals.append(up(first,last))
    vals.append(down(first,last))
    vals.append(leftup(first,last))
    vals.append(rightup(first,last))
    vals.append(leftdown(first,last))
    vals.append(rightdown(first,last))
    return( max(vals))

z = []
truemax = []
f = open("array.txt", 'r')
y = f.read().splitlines()

for x in range(len(y)):
    z.append(y[x].split())

for a in range(len(z)):
    for b in range (len(z[a])):
        truemax.append(check(a,b))

print(max(truemax))
