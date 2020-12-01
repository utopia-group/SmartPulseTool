import sys
import re

unknownMap = {}

for f in sys.argv:
    f = open(f, 'r')
    lines = f.readlines()
    provedPattern = re.compile('Proved \d+ out of \d+ specs')
    leavingPattern = re.compile("make: Leaving directory '(.*)'")
    propPattern = re.compile("([a-zA-Z]+): ([a-zA-Z0-9-]+) -- (.*)")
    timePattern = re.compile("[0-9\.]+")

    benchmark = ""
    curResults = {}

    for i in range(0, len(lines)):
        line = lines[i]

        m = leavingPattern.match(line)
        if(m):
            benchmark = m.group(1)

        m = propPattern.match(line)
        if(m):
            if(m.group(1) == "Proved"):
                curResults[m.group(2)] = 0
            elif(m.group(1) == "Failed"):
                if(timePattern.match(m.group(3))):
                    curResults[m.group(2)] = 0
                else:
                    curResults[m.group(2)] = 1
        if provedPattern.match(line):
            unknownMap[benchmark] = curResults
            curResults = {}

unknownAcc = {}
for bench in unknownMap:
    for test in unknownMap[bench]:
        if(test in unknownAcc):
            unknownAcc[test] += unknownMap[bench][test]
        else:
            unknownAcc[test] = unknownMap[bench][test]

for key in unknownAcc:
    print(key + " -- " + str(unknownAcc[key]))
