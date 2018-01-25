"""
fmeta = open("meta.bin","rb")
fmeta.seek(0)

b = fmeta.read(1)
#w = hex(ord(b))
w = ord(b)
print w


fdata = open("data.bin","rk")
fdata.seek(w)

k = fdata.read(1)
print hex(ord(k))

b = fmeta.read(1)
w = ord(b)

print chr(w ^ ord(k))
-----------------------------
"""

fmeta = open("meta.bin","rb")
fdata = open("data.bin","rk")
t = 0
fmeta.seek(t)
while 1:
    b = fmeta.read(1)
    if not b:
        break
    w = ord(b)
    t = t + w
    fdata.seek(t)
    k = fdata.read(1)
    b = fmeta.read(1)
    w = ord(b)
    print chr(w ^ ord(k)),

print
fdata.close()
fmeta.close()
