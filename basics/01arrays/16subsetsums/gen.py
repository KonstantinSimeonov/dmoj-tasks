import random


def gen_test(count):
    print(count)
    numbers = [random.randrange(1, 1 << 5) for _ in range(count)]
    return numbers


def gen(tests_count):
    for test_number in range(1, tests_count + 1):
        count = int(1 << (test_number // 2)) + 1

        test = gen_test(count)

        sum = 0
        for number in test:
            sum += number
        s = random.randrange(1, sum)

        test_name = "00%d" % test_number
        test_name = test_name[len(test_name) - 3:]
        test_path = "test.%s.in.txt" % test_name

        f = open(test_path, "w")

        print(s, file=f)
        print(" ".join(str(x) for x in test), file=f)


gen(20)
