let nm = readLine()!
    .characters.split() {$0 == " "}
    .map(String.init)
    .map() {Int($0)!};

let rows = nm[0]
let cols = nm[1]

var field: [[Int]] = []

for r in 0..<rows {
    field.append([]);
    for _ in 0..<cols {
        field[r].append(0)
    } 
}

let coins = Int(readLine()!)!

for _ in 0..<coins {
    let rc = readLine()!
        .characters.split() {$0 == " "}
        .map(String.init)
        .map() {Int($0)!};
    field[rc[0]][rc[1]] += 1
}

for row in 1..<rows {
    field[row][0] += field[row-1][0]
}

for col in 1..<cols {
    field[0][col] += field[0][col-1]
}

for row in 1..<rows {
    for col in 1..<cols {
        let a = field[row - 1][col]
        let b = field[row][col - 1]
        if(a < b) {
            field[row][col] += b
        } else {
            field[row][col] += a
        }
    }
}

print(field[rows-1][cols-1])