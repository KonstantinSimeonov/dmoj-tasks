def get_test_name(index):
    name = '00%d' % index
    name = name[len(name) - 3:]
    return 'test.%s.in.txt' % name
    return name

def gen_test(index):
    import random
    n = 1 << index

    return ' '.join(map(str, [random.randint(1, 1 << 10) for _ in range(n)]))

def gen(size):
    for index in range(1, size + 1):
        test = gen_test(index)
        test_name = get_test_name(index)
        
        f = open(test_name, 'w')
        print(test, file=f)


gen(10)

