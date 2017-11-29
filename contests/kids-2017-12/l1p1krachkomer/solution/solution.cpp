#include <iostream>

int main() {
	int a, b, c;
	std::cin >> a >> b >> c;
	std::cout << (100 * a + 10 * b + c) / (a + b + c) << '\n';
}
