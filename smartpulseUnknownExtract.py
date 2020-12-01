import sys
import re

unknownMap = {}

for f in sys.argv:
    f = open(f, 'r')
    lines = f.readlines()

    provedPattern = re.compile('Verified \d+ out of \d+ properties')
    solPattern = re.compile('(\S+)\.sol')
    propPattern = re.compile("Property (\S+) (\S+) -- (\S*)\s*s")
    timePattern = re.compile("[0-9\.]+")


    benchmark = ""
    timeLine = ""

    for i in range(0, len(lines)):
        line = lines[i]
        m = solPattern.match(line)
        if(m):
            benchmark = m.group(1)

        m = propPattern.match(line)
        if(m):
            if(m.group(2) != "verified" and m.group(2) != "counterexample"): 
                print(m.group(1) + " -- " + benchmark)
                if(m.group(1) in unknownMap):
                    unknownMap[m.group(1)] += 1
                else:
                    unknownMap[m.group(1)] = 1

for key in unknownMap:
    print(key + " -- " + str(unknownMap[key]))
