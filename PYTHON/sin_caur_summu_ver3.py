#!/usr/bin/python
# -*- coding: utf-8 -*-
from math import sin
# a0, a1, a2, a3 -> a
x = 1. * input("Lietotāj, ievadi argumentu (x): ")

y = sin(x)
print "sin(%.2f) = %.2f"%(x,y)

a0 = (-1)**0*x**1/(1)
S = a0
print "a0 = %.2f S0 = %.2f"%(a0,S)

a1 = a0 * (-1)*x*x/(2*3)
S = S + a1
print "a1 = %.2f S1 = %.2f"%(a1,S)

a2 = a1 * (-1)*x*x/(4*5)
S = S + a2
print "a2 = %.2f S2 = %.2f"%(a2,S)

a3 = a2 * (-1)*x*x/(6*7)
S = S + a3
print "a3 = %.2f S3 = %.2f"%(a3,S)
