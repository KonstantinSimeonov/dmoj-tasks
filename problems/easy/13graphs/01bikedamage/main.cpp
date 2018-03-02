#include <iostream>
#include <vector>
#include <array>
#include <queue>

constexpr double INF = 500 * 500 * 101;

struct edge {
	double dist;
	int16_t r, c;

	edge(double distance, int16_t row, int16_t col): dist(distance), r(row), c(col) {}

	inline bool operator<(edge const& other) const {
		return dist > other.dist;
	}
};

constexpr std::array<std::pair<int16_t, int16_t>, 6> even_deltas = {
	{
		{-1, -1},
		{-1, 0},
		{0, -1},
		{0, 1},
		{1, -1},
		{1, 0}
	}
};

constexpr std::array<std::pair<int16_t, int16_t>, 6> odd_deltas = {
	{
		{-1, 0},
		{-1, 1},
		{0, -1},
		{0, 1},
		{1, 0},
		{1, 1}
	}
};

int main() {
	std::ios::sync_with_stdio(0);
	std::cin.tie(0);

	int16_t r, c;
	std::cin >> r >> c;
	std::vector<std::vector<double>> tiles(r);
	for(int16_t i = 0; i < r; ++i) {
		tiles[i].resize(c);
		for(int16_t j = 0; j < c; ++j) {
			std::cin >> tiles[i][j];
		}
	}

	std::vector<std::vector<double>> distances(r);
	for(int16_t i = 0; i < r; ++i) {
		distances[i].resize(c, INF);
	}

	std::priority_queue<edge> nodes;
	nodes.emplace(0, 0, 0);
	while(nodes.size()) {
		const auto [dist, nr, nc] = nodes.top();
		nodes.pop();
		if(distances[nr][nc] < INF)
			continue;

		distances[nr][nc] = dist;
		const auto& deltas = nr % 2 ? odd_deltas : even_deltas;
		for(const auto [dr, dc] : deltas) {
			const auto next_r = nr + dr;
			const auto next_c = nc + dc;
			if(next_r < 0 || r <= next_r || next_c < 0 || c <= next_c)
				continue;

			const auto next_dist = dist + std::abs(tiles[nr][nc] - tiles[next_r][next_c]);
			if(distances[next_r][next_c] > next_dist)
				nodes.emplace(next_dist, next_r, next_c);
		}
	}

	std::cout.precision(2);
	std::cout << std::fixed << distances[r - 1][c - 1] + std::abs(tiles[0][0]) + std::abs(tiles[r - 1][c - 1]) << std::endl;
}