v0 = -7/9

h = 1/12

v1 = v0 * ( 1 - v0 * h)

v2 = 0 

for i in range(11):
    v2 = v1 * ( 1 - v0 * h)
    v1 = v2

print(v2)