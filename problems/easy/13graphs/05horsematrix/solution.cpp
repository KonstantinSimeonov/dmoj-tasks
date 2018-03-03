#include <iostream>
#include <vector>
#include <queue>
#include <array>
#include <tuple>

constexpr std::array<std::pair<int, int>, 8> deltas = {
    {
        {-2, -1}, {-2, 1}, {-1, -2}, {-1, 2},
        {2, -1}, {2, 1}, {1, -2}, {1, 2}
    }
};

int main() {
    std::cin.tie(0);
    std::ios::sync_with_stdio(0);

    using node = std::tuple<int, int, int>; // row, column, steps to reach the node
    int n;
    std::cin >> n;
    std::vector<std::vector<char>> board(n);

    int start_row, start_col;
    for(int i = 0; i < n; ++i) {
        board[i].resize(n);
        for(int j = 0; j < n; ++j) {
            std::cin >> board[i][j];
            if(board[i][j] == 's') {
                start_row = i;
                start_col = j;
            }
        }
    }

    std::queue<node> nodes;
    nodes.emplace(start_row, start_col, 0);

    while(nodes.size()) {
        const auto [r, c, steps] = nodes.front();
        nodes.pop();

        for(const auto [dr, dc] : deltas) {
            const auto nr = r + dr;
            const auto nc = c + dc;
            if(nr < 0 || n <= nr || nc < 0 || n <= nc // outside the field
                || board[nr][nc] == 'x' // unpassable or visited
            ) continue;

            if(board[nr][nc] == 'e') {
                std::cout << steps + 1 << std::endl;
                return 0;
            }

            board[nr][nc] = 'x';
            nodes.emplace(nr, nc, steps + 1);
        }
    }

    std::cout << "No" << std::endl;
}
