#include <iostream>
#include <vector>

int main() {
    std::cin.tie(0);
    std::ios::sync_with_stdio(0);
    std::size_t n, p;
    std::cin >> n >> p;

    std::vector<std::size_t> ws(n);
    std::cin >> ws[0];
    for(std::size_t i = 1; i < n; ++i) {
        std::cin >> ws[i];
        ws[i] += ws[i - 1];
    }

    for(std::size_t i = 0; i < p; ++i) {
        std::size_t q;
        std::cin >> q;

        std::size_t j = 0;
        while(j < n && ws[j] < q)
            ++j;
        
        std::cout << (j - (j >= n)) << ' ';
    }

    std::cout << std::endl;
}
