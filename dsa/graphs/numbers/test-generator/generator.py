from random import randrange

rs = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]
cs = [3, 6, 12, 24, 48, 96, 192, 384, 768, 1536]

dims = [
    (2, 3), 
    (4, 6),
    (8, 12),
    (16, 24),
    (32, 48),
    (64, 96),
    (128, 192),
    (256, 384),
    (512, 768),
    (1024, 1536)
]

for i in range(1, len(dims) + 1):
    (rows, cols) = dims[i - 1]
    file = open('test.00%d.in.txt' % i, 'w')

    file.write('%d %d' % (rows, cols))
    file.write('\r\n')

    for row in range(rows):
        row_line = ''
        for col in range(cols):
            value = randrange(1, 101)
            if (row == 0 and col == cols -1) or\
                    (row == rows - 1 and col == 0):
                        value = 100

            row_line = '%s %d' % (row_line, value)

        file.write(row_line[1:])
        file.write('\r\n')
    file.close()
