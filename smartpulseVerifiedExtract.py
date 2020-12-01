import sys
import re

verMap = {}

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
            timeLine += m.group(1)

        m = propPattern.match(line)
        if(m):
            if(m.group(2) == "verified"):
                timeLine += "," + m.group(3)
            else:
                timeLine += ","

        if(provedPattern.match(line)):
            verMap[benchmark] = timeLine
            timeLine = ""

for key in verMap:
    print(verMap[key])
