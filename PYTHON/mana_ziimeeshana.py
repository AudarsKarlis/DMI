# -"- coding: utf-8 -"-            (šis jāraksta, ja kodā tiks izmantoti burti ar
#                                   mīkstinājuma zīmēm)
#https://matplotlib.org/users/pyplot_tutorial.html

'''
import matplotlib.pyplot as plt
plt.plot([1,2,3,4], [1,4,9,16], 'gv', markersize=30)
plt.plot([1,2,3,4], [1,4,9,16],'-.c', linewidth=10)
plt.axis([0, 6, 0, 20])
plt.grid()
plt.show()
'''
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



a = -0.95
b = 0.95
x = np.arange(a,b,0.01)
y = mans_asinuss(x)
yy = np.arcsin(x)
plt.plot(x,y, 'ro', markersize=15)
plt.plot(x,yy, 'g-', markersize=10)
plt.axis([-0.95, 0.95, -3.15, 3.15])
plt.grid()
plt.show()

'''
plt.plot([1,2,3,4], [1,4,9,16], 'ro', markersize=15)
plt.plot([1,2,3,4], [1,4,9,16],':b', linewidth=0.3)
plt.axis([0, 6, 0, 20])
plt.grid()
plt.show()
'''

'''
import numpy as np
import matplotlib.pyplot as plt

# evenly sampled time at 200ms intervals
t = np.arange(0., 5., 0.2)

# red dashes, blue squares and green triangles
plt.plot(t, t, 'r--', t, t**2, 'bs', t, t**3, 'g^')
plt.show()
'''

'''
import matplotlib.pyplot as plt
plt.plot([1,2,3,4,6,8], [1,4,9,16,20,5], 'ro')
plt.axis([0, 10, 0, 25])
plt.show()
'''

'''
import matplotlib.pyplot as plt
plt.plot([1,2,3,4,5,6])
plt.ylabel('some numbers')
plt.xlabel('some other numbers')
plt.show()
'''
# yy = np.sin(x)
# plt.plot(x,yy)
# plt.show(x,y)
# plt.show(x,yy)
