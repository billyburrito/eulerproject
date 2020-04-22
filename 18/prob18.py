
z = []
#f = open("pyraA.txt", 'r')
#f = open("pyra1.txt", 'r')
f = open("triangle.txt", 'r')
y = f.read().splitlines()

for x in range(len(y)):
    a_list = y[x].split()
    thingy = map(int,a_list)
    z.append(list(thingy))


for a in range(len(z)-2,-1,-1):
    print(z[a])
    for b in range(len(z[a])):
        print(z[a][b])
        if(z[a][b]+z[a+1][b]) > (z[a][b]+z[a+1][b+1]):
            z[a][b] += z[a+1][b]
        else:
            z[a][b] += z[a+1][b+1]
        print(z[a][b])
