#include <cstdio>
#include <iostream>

int lab[1500][1500];
int result[1500][1500];
int n;

void readInput();

int solve();

int main()
{
    readInput();
    int result = solve();
    std::cout << result << '\n';
    return 0;
}

void readInput()
{
    std::cin >> n;

    for (auto row = 0; row < n; ++row) {
        for (auto col = 0; col < n; ++col) {
            std::cin >> lab[row][col];
        }
    }
}

int solve()
{
    for (int row = 0; row < n; ++row) {
        for (int col = 0; col < n; ++col) {
            int top = 0;
            int left = 0;
            if (row - 1 >= 0) {
                top = result[row - 1][col];
                if (lab[row - 1][col] == lab[row][col]) {
                    top++;
                }
            }

            if (col - 1 >= 0) {
                left = result[row][col - 1];
                if (lab[row][col - 1] == lab[row][col]) {
                    left++;
                }
            }

            if (top != 0 && left != 0) {
                result[row][col] = std::min(top, left) + 1;
            }
            else {
                result[row][col] = std::max(top, left) + 1;
            }
        }
    }

    return result[n - 1][n - 1];
}
