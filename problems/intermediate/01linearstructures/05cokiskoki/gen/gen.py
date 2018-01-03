
tests_count = 20

n = 5
MIN_VAL = 1
MAX_VAL = 1 << 10

def get_buildings(count):
    import random
    return [random.randint(MIN_VAL, MAX_VAL) for i in range(count)]

for testi in range(tests_count):
    buildings = get_buildings(n)

    lines = [
        str(n),
        ' '.join(str(b) for b in buildings)
    ]


    test_index = '00%d' % (testi + 1)
    
    test_index = test_index[0 + len(test_index) - 3:]

    filename = 'test.%s.in.txt' % test_index

    f = open(filename, 'w')

    [print(line, file=f) for line in lines]
    n *= 1.7
    n = int(n)
    
