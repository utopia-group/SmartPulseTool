address a = address(0xDEADBEEF1);
address b = address(0xDEADBEEF2);
address c = address(0xDEADBEEF3);
ICO ico = new ICO(address(this), a, b, c);
ico.initOptionProgram();
