fn = 'c01.txt'
f = open(fn,"w")
print f.tell()
f.write("Python ir asakains\n")
f.seek(7)
f.write("- p")
f.close()
print "Darbs ar failu ir pabeigts"
