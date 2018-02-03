const tests = [
`53--7----
6--195---
-98----6-
8---6---3
4--8-3--1
7---2---6
-6----28-
---419--5
----8--79`
];

const parse_char = c => c === '-' ? -1 : (c.charCodeAt(0) - 48);
const range = (s, e) => Array.from({ length: e - s }).map((_, i) => i + s);

function *square(board, r, c) {
    let startR = (r / 3 | 0) * 3;
    let startC = (c / 3 | 0) * 3;

    while(startR < r * 3) {
        while(startC < c * 3) {
            yield board[startR][startC];
            ++startC;
        }

        ++startR;
    }
}

const solve = test => {
    const board = test.split('\n').map(r => [].map.call(r, parse_char));
    const available = board.map(() => []);

    for (let i = 0; i < board.length; ++i) {
        for (let j = 0; j < board.length; ++j) {
            if (board[i][j] !== -1) {
                available[i][j] = board[i][j];
                continue;
            }

            const possible = new Set(range(1, 10));
            for (let ci = 0; ci < board.length; ++ci) {
                if (board[i][ci] !== -1)
                    possible.delete(board[i][ci]);
            }

            for (let ri = 0; ri < board.length; ++ri) {
                if (board[ri][j] !== -1)
                    possible.delete(board[ri][j]);
            }

            for(const n of square(board, i, j)) {
                possible.delete(n);
            }

            if (possible.size === 1) {
                available[i][j] = [...possible].pop();
                again = true;
            } else {
                available[i][j] = possible;
            }
        }
    }

    console.log(available);
};

solve(tests[0]);
