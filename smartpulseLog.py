import sys
import re

f = open(sys.argv[1], 'r')
lines = f.readlines()

provedPattern = re.compile('Verified \d+ out of \d+ properties')
solPattern = re.compile('(\S+)\.sol')
propPattern = re.compile("Property (\S+) (\S+) -- (\S*)\s*s")
timePattern = re.compile("[0-9\.]+")

times = open('times.csv', 'w')
statuses = open('statuses.csv', 'w')

timeLine = ""
statusLine = ""

for i in range(0, len(lines)):
    line = lines[i]

    m = solPattern.match(line)
    if(m):
        timeLine += m.group(1)
        statusLine += m.group(1)

    m = propPattern.match(line)
    if(m):
        if(m.group(2) == "verified"):
            statusLine += ",v"
            timeLine += "," + m.group(3)
        elif(m.group(2) == "counterexample"):
            statusLine += ",c"
            timeLine += "," + m.group(3)
        elif(m.group(2) == "timed-out"):
            statusLine += ",t"
            timeLine += ",timeout"
        elif(m.group(2) == "exception"):
            statusLine += ",e"
            timeLine += ",error"
        else:
            statusLine += ",u"
            timeLine += ",unknown"

    if(provedPattern.match(line)):
        times.write(timeLine + '\n')
        statuses.write(statusLine + '\n')
        statusLine = ""
        timeLine = ""
