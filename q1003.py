# function
def fibo(num):
    fb = []
    fb.append(1)
    fb.append(0)
    fb.append(1)
    if num > 1:
        for iter in range(3, num+2):
            fb.append(fb[iter-1] + fb[iter-2])
    print(fb[num], fb[num+1])
    return 0

# main
testcase = int(input())
num = []
for iter in range(0, testcase):
    num.append(int(input()))
    fibo(num[iter])