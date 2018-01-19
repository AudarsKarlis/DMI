# -*- coding: utf-8 -*-
# print formāti balstās uz C valodas
# http://www.cplusplus.com/reference/studio/printf
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches


def mans_asinuss(x):
    k = 0
    a = x
    S = a
    while k < 500:
        k = k + 1
        R = x*x*(2*k-1)*(2*k-1)/((2*k)*(2*k+1))
        a = a * R
        S = S + a
    return S

a = -0.95
b = 0.95
x = np.arange(a,b,0.05)
y = mans_asinuss(x)
plt.plot(x,y,label="f(x)=arcsin(x)")
plt.grid()

n = len(x)
y_prim = []
for i in range(n-1):
    delta_y = y[i+1]-y[i]
    delta_x = x[i+1]-x[i]
    y_prim.append(delta_y/delta_x)
plt.plot(x[:n-1],y_prim,label="f'(x)")

y_primprim = []
for i in range(n-2):
    delta_y_prim = y_prim[i+1]-y_prim[i]
    delta_x = x[i+1]-x[i]
    y_primprim.append(delta_y_prim/delta_x)
plt.plot(x[:n-2],y_primprim,label="f''(x)")
plt.legend(bbox_to_anchor=(1.05, 1), loc=7, borderaxespad=1.)
plt.show()
