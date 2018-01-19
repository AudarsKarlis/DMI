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
plt.plot(x,y,label="test1")
plt.grid()
#green_patch = mpatches.Patch(color='green', label='The green data')
#plt.legend(handles=[green_patch])

n = len(x)
y_prim = []
for i in range(n-1):
    delta_y = y[i+1]-y[i]
    delta_x = x[i+1]-x[i]
    y_prim.append(delta_y/delta_x)

plt.plot(x[:n-1],y_prim,label="test2")
#red_patch = mpatches.Patch(color='red', label='The red data')
#plt.legend(handles=[red_patch])

plt.legend(bbox_to_anchor=(1.05, 1), loc=2, borderaxespad=1.)
plt.show()

'''
line_up, = plt.plot([1,2,3], label='Line 2')
line_down, = plt.plot([3,2,1], label='Line 1')
plt.legend(handles=[line_up, line_down]



y_primprim = []
for i in range(n-2):
    augsh = y[i+1]-2*y+y[i-1]
    apaks = (x[i+1]-x[i])*(x[i+1]-x[i])
    y_primprim.append(augsh/apaks)

plt.plot(x[:n-2],y_primprim)
plt.show()
'''    
