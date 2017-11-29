#!/usr/bin/env python

from random import randrange

TEST_COUNT = 20
MAXN = 100000

for i in range(1, TEST_COUNT + 1):
	in_name = 'test.%03d.in.txt' % i
	b = MAXN / TEST_COUNT / TEST_COUNT * i * i
	b = randrange(b - 127, b)
	a = randrange(1, b)
	in_file = open(in_name, 'w')
	in_file.write('%d %d\n' % (a, b))
	print('%d %d' % (a, b))
	in_file.close()
