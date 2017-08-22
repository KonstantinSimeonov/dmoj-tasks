import sys
from queue import Queue

def solve():
    def find_start(matrix):
        START_CHAR = 's'
        for row in range(len(matrix)):
            for col in range(len(matrix[row])):
                if matrix[row][col] == START_CHAR:
                    return (row, col)

    def in_range(value, n):
        return value >= 0 and value < n

    END_CHAR = 'e'
    EMPTY_CHAR = '-'
    WALL_CHAR = 'x'

    # n = int(sys.stdin.readline())

    # matrix = [[str.strip() for str in sys.stdin.readline().split(' ')] for i in range(n)]

    input = [str.strip() for str in sys.stdin.read().split('\n') if str != '']
    n = int(input[0])

    matrix = [[cell.strip() for cell in row.split(' ')] for row in input[1:]]

    (sx, sy) = find_start(matrix)

    queue = Queue()

    queue.put((sx, sy, 0))

    dirs = [
            (-2, +1), (-2, -1),
            (-1, +2), (-1, -2),
            (+1, +2), (+1, -2),
            (+2, +1), (+2, -1),
            ]

    is_finished = False
    while not is_finished and not queue.empty():
        (row, col, size) = queue.get()
        queue.task_done()

        for (drow, dcol) in dirs:
            next_row = row + drow
            next_col = col + dcol
            if not in_range(next_row, n) or not in_range(next_col, n):
                continue

            if matrix[next_row][next_col] == 'e':
                print(size + 1)
                is_finished = True
                return
            elif matrix[next_row][next_col] == EMPTY_CHAR:
                matrix[next_row][next_col] = WALL_CHAR
                queue.put((next_row, next_col, size + 1))

    print('No')
    return

solve()
