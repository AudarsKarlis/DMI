#!/usr/bin/python
# -*- coding: utf-8 -*-
import matplotlib.pyplot as plt
import numpy as np

def mans_sinuss(x,n):
    k = 0
    a = (-1)**0*x**1/(1)
    S = a
    while k < n:
        k = k + 1
        R = (-1)*x*x/((2*k)*(2*k+1))
        a = a * R
        S = S + a
    return S

x = np.arange(0.0, 6.28, 0.01)
y = np.sin(x)
yy = mans_sinuss(x,0)

plt.plot(x,y)
plt.plot(x,yy)
plt.show()
