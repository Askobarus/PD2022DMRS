import sympy as sp
import random
import time

timing = time.time()
a = int(input("a >> "))
b = int(input("b >> "))

while (a == 0 and b == 0):
    a = int(input("a >> "))
    b = int(input("b >> "))

lim1 = [random.randint(1, 1000) for i in range(100)]
lim2 = [random.randint(1, 1000) for i in range(100)]

x = sp.Symbol("x")

f = open('number_3.txt', 'w')
#print(lim1)
#print(lim2)
for i in range(100):
    if(a != 0):
        ans = sp.integrate(1 / (a * x + b), (x, lim1[i], lim2[i]))
    else:
        ans = b * lim2[i] - lim1[i] * b
    f.write(str(ans) + '\n')

f.write(str(time.time() - timing) + " seconds. Programm end")
f.close()
