import Chess

extension Board {
  /// Print the board to the console.
  func printBoard() {
    for i in 0..<8 {
      for j in 0..<8 {
        print(rawBoard[i][j], terminator: " ")
      }
      print()
    }
  }
}
