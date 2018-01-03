#include <iostream>
#include <algorithm>
#include <vector>

struct Number {
	int index;
	int value;

	inline bool operator<(Number const& other) const {
		return value > other.value;
	}
};

int main() {
	int n;
	std::cin >> n;

	std::vector<Number> numbers;
	for(int i = 0; i < n; ++i) {
		int x;
		std::cin >> x;
		numbers.push_back({i, x});
	}
	std::sort(numbers.begin(), numbers.end());

	std::vector<int> ranks(n);
	for(int i = 0; i < n; ++i) {
		ranks[numbers[i].index] = i + 1;
	}

	bool f = true;
	for(int x: ranks) {
		if(f) f = false;
		else std::cout << ' ';
		std::cout << x;
	}
	std::cout << '\n';
}
