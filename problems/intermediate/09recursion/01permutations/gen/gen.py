tests_count = 10

for test_index in range(1, tests_count + 1):
    test_name = '00%d' % test_index
    test_name = test_name[len(test_name) - 3:]
    test_path = 'test.%s.in.txt' % test_name

    f = open(test_path, 'w')

    print(test_index, file=f)




