import sys
import re

f = open(sys.argv[1], 'r')
lines = f.readlines()
provedPattern = re.compile('Proved \d+ out of \d+ specs')
leavingPattern = re.compile("make: Leaving directory '(.*)'")
propPattern = re.compile("([a-zA-Z]+): ([a-zA-Z0-9-]+) -- (.*)")
timePattern = re.compile("[0-9\.]+")

times = open('times.csv', 'w')
statuses = open('statuses.csv', 'w')

timeLine = ""
statusLine = ""

for i in range(0, len(lines)):
    line = lines[i]

    m = leavingPattern.match(line)
    if(m):
        timeLine += m.group(1)
        statusLine += m.group(1)

    m = propPattern.match(line)
    if(m):
        if(m.group(1) == "Proved"):
            statusLine += ",v"
            timeLine += "," + m.group(3)
        elif(m.group(1) == "Failed"):
            if(timePattern.match(m.group(3))):
                statusLine += ",c"
                timeLine += "," + m.group(3)
            elif(m.group(3) == "timed out"):
                statusLine += ",t"
                timeLine += ",timeout"
            elif(not m.group(3)):
                statusLine += ",e"
                timeLine += ",error"
            else:
                statusLine += ",u"
                timeLine += ",unknown"
    if provedPattern.match(line):
        times.write(timeLine + '\n')
        statuses.write(statusLine + '\n')
        statusLine = ""
        timeLine = ""

