import random

import random

def get_file_name(index):
    name = '00%d' % index
    name = name[len(name) - 3:]
    return 'test.%s.in.txt' % name

def gen(tests_count):
    for test_index in range(1, tests_count + 1):
        n = random.randint(1, 1 << 10)
        m = test_index

        filename = get_file_name(test_index)
        f = open(filename, 'w')

        print('%d %d' % (n, m), file=f)

gen(20)
