#include <stdio.h>
#include <unistd.h>
#define MAXN 2048

int dp[2][MAXN];

#define BUFFER_SIZE 8388608
char buffer[BUFFER_SIZE];
int buffer_index = 0;

int read_next() {
	int x;
	do {
		x = buffer[buffer_index];
		++buffer_index;
	} while((x|1) != '1');
	return x - '0';
}

int main() {
	for(;;) {
		int r = read(0, buffer + buffer_index, BUFFER_SIZE - buffer_index);
		if(r == 0) break;
		buffer_index += r;
	}

	int n = 0;
	for(buffer_index = 0; buffer[buffer_index] > ' '; ++buffer_index)
		n = n * 10 + buffer[buffer_index] - '0';

	for(int i = 0; i < n; ++i) {
		for(int j = 0; j < n; ++j) {
			int cell = read_next();
			if(i == 0 && j == 0) continue;

			int c1 = j > 0 ? dp[i & 1][j - 1] + (dp[i & 1][j - 1] % 2 == cell) : (1 << 30);
			int c2 = i > 0 ? dp[(i - 1) & 1][j] + (dp[(i - 1) & 1][j] % 2 == cell) : (1 << 30);
			dp[i & 1][j] = (c1 < c2 ? c1 : c2) + 1;
		}
	}

	printf("%d\n", dp[(n - 1) & 1][n - 1] + 1);
}
