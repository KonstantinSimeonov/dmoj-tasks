
def get_file_name(index):
    name = '00%d' % index
    name = name[len(name) - 3:]
    return 'test.%s.in.txt' % name


def get_random_digit(digits):
    import random
    n = len(digits)

    index = random.randint(0, n - 1)
    return digits[index]


def get_random_number(digits_count):
    possible_digits = '1234567890ABCDEF'

    digits = ''.join(get_random_digit(possible_digits) for _ in range(digits_count))
    while digits[0] is '0':
        digits = '%s%s' % (get_random_digit(possible_digits), digits[:1])
    return digits


def gen(count):
    for test_index in range(1, count + 1):

        number = get_random_number(1 << count)

        test_path = get_file_name(test_index)
        f = open(test_path, 'w')

        print(number, file=f)


gen(15)
