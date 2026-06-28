struct Board {
    var board: [[String]] = [[String]]()
    var alphabet: [String] = ["a", "b", "c", "d", "e", "f", "g", "h"]
    mutating func initBoard() {
        for i in 0..<8 {
            var currentRow: [String] = [String]()
                for j in 0..<8 {
                    currentRow.append([alphabet[i], String(j + 1)].joined())
            }
            board.append(currentRow)
        }
    }

    func displayBoard() {
        for i in 0..<8 {
            for j in 0..<8 {
                print(board[i][j], terminator: " ")
            }
            print()
        }
    }
}