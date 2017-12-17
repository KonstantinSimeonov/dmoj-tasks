import sys

def solve():
    size = int(sys.stdin.readline())

    lab = [list(map(int, sys.stdin.readline().split(' '))) for i in range(size)]

    result = [[0] * size for i in range(size)]
    for row in range(size):
        for col in range(size):
            top = 0
            left = 0
            if row - 1 >= 0:
                top = result[row-1][col]

                if lab[row-1][col] == lab[row][col]:
                    top += 1

            if col - 1 >= 0:
                left = result[row][col-1]
                if lab[row][col-1] == lab[row][col]:
                    left += 1

            if top and left:
                result[row][col] = min([top, left]) + 1
            else:
                result[row][col] = max([top, left]) + 1

    print(result[size-1][size-1])

solve()
