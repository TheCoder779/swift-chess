@main
struct SwiftChess {
    static func main() {
        var board = Board()
        board.initBoard()
        print(board.board)
    }
}