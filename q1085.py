input0 = input().split()

x = int(input0[0])
y = int(input0[1])
w = int(input0[2])
h = int(input0[3])

print(min(w-x, x,h-y, y))