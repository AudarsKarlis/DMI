# -*- coding: utf-8 -*-
# print formāti balstās uz C valodas
# http://www.cplusplus.com/reference/studio/printf
import numpy as np
import matplotlib.pyplot as plt

def mans_asinuss(x): # šis ir pārveidots
    k = 0
#    a = (-1)**0*x**1/(1) #vajag aprēķināt pirmo virknes locekli
    a = x # šis ir pārveidots, bet vai pareizi???
    S = a
#    print "Izdruka no liet. f. a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

    while k < 500:
        k = k + 1
#        R = a * (-1)*x*x/((2*k)*(2*k+1)) #šo te pārveidot
        R = x*x*(2*k-1)*(2*k-1)/((2*k)*(2*k+1)) #šis ir pārveidots
        a = a * R
        S = S + a
#        if k == 499:
#            print "Izdruka no liet. f. a%d = %6.2f S%d = %6.2f"%(k,a,k,S)
#        if k == 500:
#            print "Izdruka no liet. f. a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

    #print "Izdruka no liet. f. Beigas!"
    return S




'''
def mans_sinuss(x):
    k = 0
    a = (-1)**0*x**1/(1)
    S = a
    while k < 500:
        k = k + 1
        R = (-1)*x*x/((2*k)*(2*k+1))
        a = a * R
        S = S + a
    return S
'''

a = -0.95
b = 0.95
x = np.arange(a,b,0.01)
y = mans_asinuss(x)
plt.plot(x,y)
plt.grid()
plt.show()

delta_x = 1.e-3 # 0.001 ir tas pats, kas 1.e-3
funa = mans_asinuss(a)
funb = mans_asinuss(b)
if funa * funb > 0:
    print "[%.2f,%.2f] intervālā sakņu nav"%(a,b)
    print "vai šajā intervālā ir pāru sakņu skaits"
    exit()
print "Turpinājums, kad sakne ir:"
print "Vērtības intervāla galapunktos - ",
print "f(%.2f)=%.2f un f(%.2f)=%.2f"%(a,funa,b,funb)

k = 0
while b-a > delta_x:
    k = k+1
    x = (a+b)/2
    funx = mans_asinuss(x)
    print "%3d. a=%.5f f(%.5f)=%8.5f b=%.5f"%(k,a,x,funx,b)
    if funa * funx > 0:
        a = x
    else:
        b = x
print "Rezultāts"
print "a=%.9f f(%.9f)=%12.9f b=%.9f"%(a,x,funx,b)
print "Aprēķins veikts ar %d iterācijām"%(k)
