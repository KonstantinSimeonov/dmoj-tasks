def get_test_name(index):
    name = '00%d' % index
    name = name[len(name) - 3:]
    return name


def gen_test(edges_count):
    from random import choice, shuffle
    extensions = ['png', 'css', 'js', 'html', 'jpg']
    vertices = ['resource%d.%s' % (i, choice(extensions)) for i in range(edges_count // 2)]

    shuffle(vertices)

    edges = set()
    for i in range(len(vertices) - 1):
        edges.add('%s needs %s' % (vertices[i], vertices[i + 1]))
        # edges.add([vertices[i], vertices[i + 1]])

    index = 0
    while len(edges) < edges_count:
        x = vertices[index]
        y = choice(vertices[index+1:])

        edges.add('%s needs %s' % (x, y))

        index +=1
        index = index % (len(vertices) - 1)
    return edges


def has_loop(edges):
    graph = {}
    for [x, y] in edges:
        if x not in graph:
            graph[x] = set()
        graph[x].add(y)

        if y in graph and x in graph[y]:
            return True

    return False


def gen(tests_count):
    coeff = 1.29
    edges_count = 10

    for test_index in range(1, tests_count + 1):
        test_name = get_test_name(test_index)
        test_path = 'test.%s.in.txt' % test_name

        print(' --- Generating test %s ' % test_name)

        test = gen_test(edges_count)
        # while has_loop(test):
        #     test = gen_test(edges_count)


        f = open(test_path, 'w')
        print(edges_count)
        print(edges_count, file=f)
        for line in test:
            print(line, file=f)
        edges_count = int(coeff * edges_count)


gen(20)

test_edges_no_loop = [
    ["index.html", "main.css", ],
    ["main.css", "sub1.css", ],
    ["index.html ", "main.js", ],
    ["main.css", "sub2.css", ],
    ["index.html ", "logo.png", ],
    ["main.js", "player.png", ],
    ["main.js", "partial.html", ],
    ["partial.html", "partial.js", ],
]

test_edges_with_loop = [
    ["index.html", "main.css", ],
    ["main.css", "sub1.css", ],
    ["index.html ", "main.js", ],
    ["main.css", "sub2.css", ],
    ["index.html ", "logo.png", ],
    ["main.js", "player.png", ],
    ["main.js", "partial.html", ],
    ["partial.html", "partial.js", ],
    ["partial.js", "partial.html", ],
]

# print(has_loop(test_edges_no_loop))
# print(has_loop(test_edges_with_loop))
