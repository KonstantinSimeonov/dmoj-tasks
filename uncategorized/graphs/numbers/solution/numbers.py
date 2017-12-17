import sys

from heapq import *

def solve():
    def in_range(value, max):
        return value >= 0 and value < max

    INF = 1 << 30
    (rows, cols) = [int(str) for str in  sys.stdin.readline().split(' ')]

    matrix = [list(map(int, [str for str in sys.stdin.readline().split(' ')])) for r in range(rows)]
    initial = matrix[0][0]

    dist = [[INF] * cols for r in range(rows)]
    dist[0][0] = initial

    heap = []

    heappush(heap, (initial, 0, 0))

    dirs = [
            (-1, 0),
            (0, +1),
            (+1, 0),
            (0, -1),
    ]

    while len(heap):
        (d, row, col) = heappop(heap)
        if matrix[row][col] == 101:
            continue

        matrix[row][col] = 101

        for (drow, dcol) in dirs:
            next_row = row + drow
            next_col = col + dcol

            if not in_range(next_row, rows) or not in_range(next_col, cols):
                continue

            if d + matrix[next_row][next_col] < dist[next_row][next_col]:
                dist[next_row][next_col] = d + matrix[next_row][next_col]
                heappush(heap, (dist[next_row][next_col], next_row, next_col))

    print(dist[rows-1][cols-1])
solve()
