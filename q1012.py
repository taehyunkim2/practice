n = int(input())
maplist = list[]
buglist = list[]
for i in range(n):
    map(int, input().split())

for i in range(0, len(maplist)):
    buglist = list(map(int, input().split()))


testcase = data[0]
map = list[]
count = list[0]
for i in range(0, testcase):
    for j in range(0, index1):
        for k in range(0, index2):
            if map[i][j][k] = 1:
                count = count+1
                erase(j, k)


def erase(x, y) :
    map[i][x][y] == 0
    if map[i][x+1][y] == 1:
        erase(x+1, y)
    if map[i][x][y+1] == 1:
        erase(x, y+1)
    return 0