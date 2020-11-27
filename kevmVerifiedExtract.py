import sys
import re

f = open(sys.argv[1], 'r')
lines = f.readlines()
provedPattern = re.compile('Proved \d+ out of \d+ specs')
leavingPattern = re.compile("make: Leaving directory '(.*)'")
propPattern = re.compile("([a-zA-Z]+): ([a-zA-Z0-9-]+) -- (.*)")
timePattern = re.compile("[0-9\.]+")

timeLine = ""

for i in range(0, len(lines)):
    line = lines[i]

    m = leavingPattern.match(line)
    if(m):
        timeLine += m.group(1)

    m = propPattern.match(line)
    if(m):
        if(m.group(1) == "Proved"):
            timeLine += "," + m.group(3)
        elif(m.group(1) == "Failed"):
            timeLine += ","
    if provedPattern.match(line):
        print(timeLine)
        timeLine = ""

