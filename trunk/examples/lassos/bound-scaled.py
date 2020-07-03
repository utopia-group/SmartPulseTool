#!/usr/bin/python
# Generates a scalable example of the form
#
# X = 1;
# while (y >= sum X) {
#   y := y - 1;
# }
#
# author: Jan Leike
# date: 2013-01-09

import sys
import os.path

size = 10;
if len(sys.argv) > 1:
	size = int(sys.argv[1])

vars = ["x%d" % i for i in range(size)]

with open(os.path.splitext(__file__)[0] + str(size) + ".bpl", 'w') as f:
	f.write("// Auto-generated by %s\n" % os.path.basename(__file__))
	f.write("// size = %d\n\n" % size)
	f.write("procedure main() returns (y: int)\n{\n")
	f.write("  var " + ", ".join(vars) + ": int;\n")
	f.write("\n".join(["  %s := 1;" % v for v in vars]) + "\n")
	f.write("  while (y >= " + " + ".join(vars) + ") {\n")
	f.write("    y := y - 1;\n")
	f.write("  }\n}\n");
