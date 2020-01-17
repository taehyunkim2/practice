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