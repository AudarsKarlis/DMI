#!/usr/bin/python
# -*- coding: utf-8 -*-
print "Funkcija, kura tiks apskatiita shajaa kodaa, ir funkcija y=arcsin(x)"
print "Matemaatikaa jebkuru funkciju var uzrakstiit, izmantojot Teilora rindu, kas ir"
print "atseviskju elementu summa."
print "Funkciju y=arcsin(x) peec izvirziijuma Teilora rindaa var uzrakstiit shaadi:"
print ""
print ""
print "           500"
print "      ------------"
print "      \\           \\"
print "       \\"
print "        \\                      2k+1"
print "         \\            (2k)! * x"
print "  s(x)=             -----------------------"
print "         /               2              2k"
print "        /            (k!) * (2k + 1) * 2"
print "       /"
print "      /           /"
print "      ------------"
print "          k = 0"
print ""
print ""
print "Katru naakamo Teilora rindas locekli var apreekjinaat, esosho locekli"
print "reizinot ar rekurences reizinaataaju R."
print "Rekurences reizinaataajs izskataas shaadi:"
print ""
print ""
print "        2           2"
print "       x  * (2k - 1)"
print "  R = ---------------"
print "        2k (2k + 1)"
print ""
print ""



from math import asin

#def mans_sinuss(x): # pārveidot?
def mans_asinuss(x): # šis ir pārveidots
    k = 0
#    a = (-1)**0*x**1/(1) #vajag aprēķināt pirmo virknes locekli
    a = x # šis ir pārveidots, bet vai pareizi???
    S = a
    print "Izdruka no liet. f. a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

    while k < 500:
        k = k + 1
#        R = a * (-1)*x*x/((2*k)*(2*k+1)) #šo te pārveidot
        R = x*x*(2*k-1)*(2*k-1)/((2*k)*(2*k+1)) #šis ir pārveidots
        a = a * R
        S = S + a
        if k == 499:
            print "Izdruka no liet. f. a%d = %6.2f S%d = %6.2f"%(k,a,k,S)
        if k == 500:
            print "Izdruka no liet. f. a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

    #print "Izdruka no liet. f. Beigas!"
    return S



x = 1. * input("Lietotāj, ievadi argumentu (x): ")
#y = sin(x) # šo te ir jāpārveido
y = asin(x) # šis ir pārveidots
#print "standarta sin(%6.2f) = %6.2f"%(x,y) # pārveidot???
print "standarta asin(%6.2f) = %6.2f"%(x,y)
#yy = mans_sinuss(x) # pārveidot???
yy = mans_asinuss(x)
#print "mans sin(%.2f) = %6.2f"%(x,yy) # pārveidot?
print "mans asin(%.2f) = %6.2f"%(x,yy)

k = 0
#a = (-1)**0*x**1/(1) # pārveidot?
a = x

S = a
print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

while k < 500: # tete
    k = k + 1
#    a = a * (-1)*x*x/((2*k)*(2*k+1)) # pārveidot?
    a = a*x*x*(2*k-1)*(2*k-1)/((2*k)*(2*k+1)) # tete
    S = S + a
    if k == 499:
        print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)
    if k == 500:
        print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

print "Beigas!"

'''
k = k + 1
a = a * (-1)*x*x/((2*k)*(2*k+1))
S = S + a
print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

k = k + 1
a = a * (-1)*x*x/((2*k)*(2*k+1))
S = S + a
print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

k = k + 1
a = a * (-1)*x*x/((2*k)*(2*k+1))
S = S + a
print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)
'''
