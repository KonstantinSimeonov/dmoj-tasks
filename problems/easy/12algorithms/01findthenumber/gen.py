import random

def gen_test(min, max):
    from random import randint
    return randint(min, max+1)

def gen(tests_count):
    for test_number in range(1, tests_count + 1):
        test = gen_test(1 << test_number - 1, 1 << test_number)

        test_name = "00%d" % test_number
        test_name = test_name[len(test_name) - 3:]
        test_path = "test.%s.in.txt" % test_name

        f = open(test_path, "w")

        print(test)
        print(test, file=f)
gen(32)
