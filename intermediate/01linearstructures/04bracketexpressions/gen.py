import random
import math


class Expression(object):
    OPS = ['+', '-', '*', '/']

    GROUP_PROB = 0.3

    MIN_NUM, MAX_NUM = 0, 20

    def __init__(self, maxNumbers, _maxdepth=None, _depth=0):
        """
        maxNumbers has to be a power of 2
        """
        if _maxdepth is None:
            _maxdepth = math.log(maxNumbers, 2) - 1

        if _depth < _maxdepth and random.randint(0, _maxdepth) > _depth:
            self.left = Expression(maxNumbers, _maxdepth, _depth + 1)
        else:
            self.left = random.randint(Expression.MIN_NUM, Expression.MAX_NUM)

        if _depth < _maxdepth and random.randint(0, _maxdepth) > _depth:
            self.right = Expression(maxNumbers, _maxdepth, _depth + 1)
        else:
            self.right = random.randint(Expression.MIN_NUM, Expression.MAX_NUM)

        self.grouped = random.random() < Expression.GROUP_PROB
        self.operator = random.choice(Expression.OPS)

    def __str__(self):
        s = '{0!s} {1} {2!s}'.format(self.left, self.operator, self.right)
        if self.grouped:
            return '({0})'.format(s)
        else:
            return s


def get_file_name(index):
    name = '00%d' % index
    name = name[len(name) - 3:]
    return 'test.%s.in.txt' % name


def gen(count):
    for test_index in range(1, count + 1):
        test = Expression(1 << (1 + test_index), test_index * 2)

        print(len(test.__str__()))

        test_path = get_file_name(test_index)
        f = open(test_path, 'w')
        print(test, file=f)
    return

gen(20)

