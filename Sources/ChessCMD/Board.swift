import Foundation

/// A chess board.
struct Board: Codable {
  /// The raw dictionary that contains the board's data.
  ///
  /// The board is stored as an array of rows, in which each row is an array of columns.
  var rawBoard: [[String]]

  /// Create a new board.
  init() {
    self.rawBoard = []

    // Use Unicode to get uppercase English characters
    let alphabet = (97...122).compactMap { UnicodeScalar($0) }.map { Character($0) }

    // Populate the board by becoming the Hersheypark sooperdooperLooper
    for i in 0..<8 {
      var currentRow = [String]()
      for j in 0..<8 {
        currentRow.append([String(alphabet[i]), String(j + 1)].joined())
      }
      rawBoard.append(currentRow)
    }
  }

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
