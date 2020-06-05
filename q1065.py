"""
def hansoo(num):
    digit = []
    while num != 0:
        digit.append(num % 10)
        num = num // 10
    digit.reverse()
    if digit.__len__() == 1 or digit.__len__() == 2:
        return 1
    else:
        if digit[0]-digit[1] == digit[1]-digit[2]:
            return 1
        else:
            return 0

num = int(input())
count = 0

for iter in range(1, num+1):
    count = count + hansoo(iter)

print(count)
"""
a = int(input())
count = 0

for i in range(1, (a+1)):
    dummy2 = []
    dummy = i
    while dummy != 0:
        dummy2.append(dummy % 10)
        dummy = dummy // 10
    if len(dummy2) == 1:
        count = count + 1
    elif len(dummy2) == 2:
        count = count + 1
    elif len(dummy2) == 3:
        if dummy2[0]-dummy2[1] == dummy2[1]-dummy2[2]:
            count = count + 1

print(count)