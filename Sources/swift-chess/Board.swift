struct Board {
    var board = [[Dictionary<Character, Int>]]()
    var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h"]
    mutating func initBoard() {
        for i in 1..<8 {
            var currentRow = [Dictionary<Character, Int>]()
                for j in 0..<8 {
                    currentRow.append([alphabet[i]: j])
            }
            board.append(currentRow)
        }
    }
}