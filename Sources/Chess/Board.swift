import Foundation

/// A chess board.
public struct Board: Codable {
  /// The raw dictionary that contains the board's data.
  ///
  /// The board is stored as an array of rows, in which each row is an array of columns.
  public var rawBoard: [[String]]

  /// Create a new board.
  public init() {
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
}
