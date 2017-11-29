#https://matplotlib.org/users/pyplot_tutorial.html

import matplotlib.pyplot as plt
plt.plot([1,2,3,4], [1,4,9,16], 'vg', markersize=30)
plt.plot([1,2,3,4], [1,4,9,16],'-.c', linewidth=10)
plt.axis([0, 6, 0, 20])
plt.grid()
plt.show()

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
