#include <iostream>

constexpr std::size_t FIELD_SIZE = 9;

int64_t sudoku_field[16][16];
int64_t allowed[16][16];

void print_bitset(int64_t bitset) {
    std::cout << "{ ";
    auto printed = false;
    for(std::size_t i = 1; i <= 9; ++i) {
        if(bitset & (1 << i)) {
            if(printed) {
                std::cout << ", ";
            }
            std::cout << i;

            printed = true;
        }
    }

    std::cout << " }\n";
}

bool solve(std::size_t r = 0, std::size_t c = 0) {
    if(r >= FIELD_SIZE && c >= FIELD_SIZE - 1)
        return true;

    auto next_c = (c + 1) % FIELD_SIZE;
    auto next_r = r + (next_c == 0);

    if(sudoku_field[r][c] != -1) {
        return solve(next_r, next_c);
    }

    auto possibilities = allowed[r][c];
    for(int64_t i = 1; i <= 9; ++i) {
        while((possibilities & (1 << i)) == 0 && i < 9)
            ++i;

        std::size_t sq_row_start = r / 3 * 3;
        std::size_t sq_col_start = c / 3 * 3;
        if((possibilities & (1 << i)) == 0) goto pesho;
        for(std::size_t j = 0; j < c; ++j) {
            if(sudoku_field[r][j] == i) goto pesho;
        }

        for(std::size_t j = 0; j < r; ++j) {
            if(sudoku_field[j][c] == i) goto pesho;
        }

        for(std::size_t k = 0; k < 3; ++k) {
            for(std::size_t j = 0; j < 3; ++j) {
                if(sudoku_field[sq_row_start + k][sq_col_start + j] == i) goto pesho;
            }
        }
        
        sudoku_field[r][c] = i;
        if(solve(next_r, next_c)) {
            return true;
        }
        sudoku_field[r][c] = -1;

        pesho:
            continue;
    }

    return false;
}

void calc_allowed() {
    for(std::size_t r = 0; r < FIELD_SIZE; ++r) {
        for(std::size_t c = 0; c < FIELD_SIZE; ++c) {
            if(sudoku_field[r][c] != -1) {
                allowed[r][c] = (int64_t)(1 << sudoku_field[r][c]);
                continue;
            }

            auto possibilities = allowed[r][c];

            for(std::size_t i = 0; i < FIELD_SIZE; ++i) {
                if(sudoku_field[r][i] != -1) {
                    possibilities &= ~(1 << sudoku_field[r][i]);
                }

                if(sudoku_field[i][c] != -1)
                    possibilities &= ~(1 << sudoku_field[i][c]);
            }

            std::size_t sq_row_start = r / 3 * 3;
            std::size_t sq_col_start = c / 3 * 3;
            for(std::size_t i = 0; i < 3; ++i) {
                for(std::size_t j = 0; j < 3; ++j) {
                    if(sudoku_field[sq_row_start + i][sq_col_start + j] != -1)
                        possibilities &= ~(1 << sudoku_field[sq_row_start + i][sq_col_start + j]);
                }
            }

            allowed[r][c] = possibilities;
        }
    }
}

int main() {
    char cell;
    for(std::size_t r = 0; r < FIELD_SIZE; ++r) {
        for(std::size_t c = 0; c < FIELD_SIZE; ++c) {
            std::cin >> cell;
            sudoku_field[r][c] = cell != '-' ? (cell - '0') : -1;
            allowed[r][c] = (1 << (FIELD_SIZE + 1)) - 1;
        }
    }

    calc_allowed();
    solve();

    for(std::size_t r = 0; r < FIELD_SIZE; ++r) {
        for(std::size_t c = 0; c < FIELD_SIZE; ++c) {
            std::cout << sudoku_field[r][c];
        }

        std::cout << std::endl;
    }
}
