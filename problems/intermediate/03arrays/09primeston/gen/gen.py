def get_test_name(index):
    name = '00%d' % index
    name = name[len(name) - 3:]
    return 'test.%s.in.txt' % name
    return name

def gen_test(index):
    return 1 << index

def gen(size):
    for index in range(1, size + 1):
        test = gen_test(index)
        test_name = get_test_name(index)
        
        f = open(test_name, 'w')
        print(test, file=f)


gen(10)

