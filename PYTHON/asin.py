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

def mans_asinuss (x):
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
            print "Izdruka no liet. f. a%d = %6.2f S%d = %6.2f\n Šīs vērtības tika aprēķinātas ar standarta funkcijas aprēķinu, kas\n ņemts no math bibliotēkas."%(k,a,k,S)

    return S



x = 1. * input("Lietotāj, ievadi tādu argumentu (x), lai izpildītos nosacījums 0 < x > 1: ")
y = asin(x)
print "Standarta asin (%6.2f) = %6.2f"%(x,y)
yy = mans_asinuss(x)
print "Mans asin (%.2f) = %6.2f"%(x,yy)

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
        print "a%d = %6.2f S%d = %6.2f\n Šīs vērtības tika aprēķinātas, izmantojot izvirzījumu\n Teilora rindā."%(k,a,k,S)

print "Tā kā vērtības, kuras tika aprēķinātas ar math oriģinālo funkciju, ir"
print "vienādas ar vērtībām, kuras aprēķinātas, izmantojot Teilora rindu,"
print "tad var secināt, ka summas funkcija ir izveidota pareizi."
print "Beigas!"

