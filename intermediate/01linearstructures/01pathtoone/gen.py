import random

def get_file_name(index):
    name = '00%d' % index
    name = name[len(name) - 3:]
    return 'test.%s.in.txt' % name

def gen(count):
    for test_index in range(1, count + 1):
        minVal = (1 << max([test_index - 2, 2])) - 1
        maxVal = max([minVal + (1 << test_index) - 1, minVal + 5])
        maxVal = min([maxVal, (1 << 32) - 1]) 

        test_path = get_file_name(test_index)
        f = open(test_path, 'w')
        n = random.randint(minVal, maxVal)
        print(n, file=f)

gen(32)
