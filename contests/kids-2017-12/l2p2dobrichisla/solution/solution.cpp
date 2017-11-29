#include <iostream>

bool good_number(int x) {
	int y = x;
	while(y > 0) {
		int d = y % 10;
		y /= 10;
		if(d == 0) continue;
		if(x % d > 0) return false;
	}
	return true;
}

int main() {
	int a, b;
	std::cin >> a >> b;
	int count = 0;
	for(int x = a; x <= b; ++x)
		if(good_number(x))
			++count;
	std::cout << count << '\n';
}
