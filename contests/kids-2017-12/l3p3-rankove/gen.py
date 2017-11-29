#!/usr/bin/env python

from random import randrange, shuffle

TEST_COUNT = 20
MAXN = 10000

for i in range(1, TEST_COUNT + 1):
	in_name = 'test.%03d.in.txt' % i
	n = MAXN // TEST_COUNT // TEST_COUNT * i * i

	nums = set()
	for _ in range(n):
		x = randrange(-10000, 10001)
		nums.add(x)
	nums = list(nums)
	shuffle(nums)

	in_file = open(in_name, 'w')
	in_file.write('%d\n' % len(nums))
	in_file.write(' '.join(map(str, nums)) + '\n')
	print(len(nums))
	in_file.close()
