const solve = () => {
    const gets = require('readline-sync').question;
    const print = console.log;
    const quit = () => {};

    const [rows, cols] = gets().split(' ').map(Number);

    const coins = parseInt(gets());

    let field = Array.from({length: rows})
        .map(() => Array.from({length: cols})
            .map(() => 0)
        );

    for(let i = 0; i < coins; i += 1) {
        [r, c] = gets().split(' ').map(Number);
        field[r][c] += 1;
    }

    for(let i = 1; i < rows; i += 1) {
        field[i][0] += field[i-1][0];
    }

    for(let i = 1; i < cols; i += 1) {
        field[0][i] += field[0][i-1];
    }

    for(let row = 1; row < rows; row += 1) {
        for(let col = 1; col < cols; col += 1) {
            field[row][col] += Math.max(field[row-1][col], field[row][col-1]);
        }
    }

    print(field[rows-1][cols-1])
    quit();
    return;
};

solve();

