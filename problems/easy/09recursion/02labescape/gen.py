def gen_test(n):
    import random
    lab = [['x'] * n for _ in range(n)]
    
    dirs = [(0, -1), (-1, 0), (0, +1), (+1, 0)]

    paths = random.randint(1, n // 2)

    for _ in range(paths):
        row = random.randint(0, n)
        col = random.randint(0, n)
        print(row, col)
        while True:
            lab[row][col] = ' '
            direction = random.randint(0, len(dirs))
            print(direction)
            print(dirs[direction])
            (drow, dcol) = dirs[direction]
            next_row = row + drow
            next_col = col + dcol
            if next_row < 0 or next_row >= n or\
                    next_col < 0 or next_col >= n:
                        break
            row = next_row
            col = next_col

    for row in lab:
        print(row)


def gen(tests_count):
    gen_test(5)
    for test_index in range(1, tests_count + 1):
        test_name = "00%d" % test_index
        test_name = test_name[len(test_name) - 3:]
        count = int(test_index * 256 / tests_count)
        # test = gen_test(count)

gen(10)
