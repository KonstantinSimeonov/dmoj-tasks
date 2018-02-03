#include <iostream>
// #include <fstream>
#include <vector>
#include <algorithm>

template<typename It>
bool solve(uint16_t goal, uint16_t sum, const It num_it, const It end) {
    const auto next_it = std::next(num_it);
    return (num_it != end && sum <= goal) && (sum == goal || solve(goal, sum, next_it, end) || solve(goal, sum + *next_it, next_it, end));
}

int main() {
    std::cin.tie(0);
    std::ios::sync_with_stdio(0);
    // std::ifstream input("./test.000.002.in.txt");
    auto& input = std::cin;
    uint16_t s;
    input >> s;
    std::vector<uint16_t> ns;
    ns.reserve(1 << 11);

    while(input) {
        uint16_t next;
        input >> next;
        ns.push_back(next);
    }
    std::sort(ns.begin(), ns.end(), std::greater<uint16_t>());

    std::cout << (solve(s, 0, ns.begin(), ns.end()) ? "yes" : "no") << std::endl;
}
