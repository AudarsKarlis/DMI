"""
Fails: c02.py
Autors: Audars
Datums: 24.01.2018.
1. Katrs skaitlis tiek interpreteets kaa skaitlis
   un izdrukaats sedecimaalaa formaataa.
2. Katrs baits, kas interpreteets kaa skaitlis,
   tiek izdrukaats kaa simbols.
Failu aizver
"""
d = "data.bin"
m = "meta.bin"
u = "a.txt"

fdata = open("data.bin","rk")
fdata.seek(0)

while 1:
    k = fdata.read(1)
    if not k:
        break
    print hex(ord(k))
    print chr(ord(k))

fdata.close



fmeta = open("meta.bin","rg")
fmeta.seek(0)

while 1:
    g = fmeta.read(1)
    if not g:
        break
    print hex(ord(g))
    print chr(ord(g))

fmeta.close


"""
f = open("c01.txt","rb")
f.seek(0)

while 1:
    b = f.read(1)
    if not b:
        break
    print hex(ord(b))
    print chr(ord(b))

f.close
"""
