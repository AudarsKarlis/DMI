#!/usr/bin/python
# -*- coding: utf-8 -*-
print "Funkcija, kura tiks apskatīta šajā kodā, ir funkcija y=arcsin(x)."
print "Matemaatikā jebkuru funkciju var uzrakstīt, izmantojot Teilora rindu, kas ir"
print "atsevišķu elementu summa."
print "Funkciju y=arcsin(x) pēc izvirzījuma Teilora rindā var uzrakstīt šādi:"
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
print "Katru nākamo Teilora rindas locekli var aprēķināt, esošo locekli"
print "reizinot ar rekurences reizinātāju R."
print "Rekurences reizinātājs izskatās šādi:"
print ""
print ""
print "        2           2"
print "       x  * (2k - 1)"
print "  R = ---------------"
print "        2k (2k + 1)"
print ""
print ""
print "Aprēķināsim funkciju Jūsu ievadītajam argumentam."



from math import asin

def mans_asinuss(x):
    k = 0
    a = x
    S = a
    print "Izdruka no liet. f. a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

    while k < 500:
        k = k + 1
        R = x*x*(2*k-1)*(2*k-1)/((2*k)*(2*k+1))
        a = a * R
        S = S + a
        if k == 499:
            print "Izdruka no liet. f. a%d = %6.2f S%d = %6.2f"%(k,a,k,S)
        if k == 500:
            print "Izdruka no liet. f. a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

    return S



x = 1. * input("Lietotāj, ievadi argumentu (x): ")
y = asin(x)
print "standarta asin(%6.2f) = %6.2f"%(x,y)
yy = mans_asinuss(x)
print "mans asin(%.2f) = %6.2f"%(x,yy)

k = 0
a = x

S = a
print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

while k < 500:
    k = k + 1
    a = a*x*x*(2*k-1)*(2*k-1)/((2*k)*(2*k+1))
    S = S + a
    if k == 499:
        print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)
    if k == 500:
        print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

print "Beigas!"

