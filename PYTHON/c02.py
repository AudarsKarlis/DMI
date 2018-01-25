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
f = open("c01.txt","rb")
f.seek(0)

while 1:
    b = f.read(1)
    if not b:
        break
    print hex(ord(b))
    print chr(ord(b))

f.close
