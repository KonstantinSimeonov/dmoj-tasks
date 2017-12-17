import sys

def dfs(v, vertices, used, result, current = []):
    if len(current) == len(vertices) - 1:
        if v == 1:
            to_add = [1]
            [to_add.append(x) for x in current]
            result.append(to_add)
        return

    for x in vertices[v]:
        if x in used:
            continue

        used.add(x)
        current.append(x)

        dfs(x, vertices, used, result, current)

        current.pop()
        used.remove(x)

def map_to_str(arr):
    return ' '.join([str(x) for x in arr])

def solve():
    n = int(sys.stdin.readline())
    m = int(sys.stdin.readline())
    vertices = [[] for i in range(n+1)]

    for i in range(m):
        [x, y] = map(int, [str for str in sys.stdin.readline().split(' ') if str is not ''])
        vertices[x].append(y)
        vertices[y].append(x)

    result = []

    dfs(1, vertices, set(), result)

    result = sorted(map(map_to_str, result))
    if len(result):
        print(len(result))

        for r in result:
            print(r)
    else:
        print(-1)

solve()

