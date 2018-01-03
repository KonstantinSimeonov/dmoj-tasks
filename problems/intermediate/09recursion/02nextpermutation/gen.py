import random
tests_count = 20

for test_index in range(1, tests_count + 1):
    test_name = '00%d' % test_index
    test_name = test_name[len(test_name) - 3:]
    test_path = 'test.%s.in.txt' % test_name

    print(test_name)

    size = 1 << test_index
    size = max([size, 3])
    numbers = [str(i) for i in range(1, size)]
    random.shuffle(numbers)
    

    f = open(test_path, 'w')
    print(len(numbers), file=f)
    print(' '.join(numbers), file=f)


