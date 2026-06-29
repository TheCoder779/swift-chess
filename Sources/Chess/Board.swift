import Foundation

/// A chess board.
public struct Board: Codable {
  /// The raw dictionary that contains the board's data.
  ///
  /// The board is stored as an array of rows, in which each row is an array of columns.
  var bitBoard: String
  var whitePawns: String
  var blackPawns: String
  var whiteKnights: String
  var blackKnights: String
  var whiteBishops: String
  var blackBishops: String
  var whiteRooks: String
  var blackRooks: String
  var whiteQueens: String
  var blackQueens: String
  var whiteKing: String
  var blackKing: String

  enum Unit {
    case pawn
    case knight
    case bishop
    case rook
    case queen
    case king
    case blackPawn
    case blackKnight
    case blackBishop
    case blackRook
    case blackQueen
    case blackKing
  }

  /// Create a new board.
  public init() {
    // Use Unicode to get uppercase English characters
    //let alphabet = (97...122).compactMap { UnicodeScalar($0) }.map { Character($0) }
    //64 zeros: 0000000000000000000000000000000000000000000000000000000000000000
    // Populate the board by a very human-inefficient way but is very practical for the machine
    whitePawns =   "0000000011111111000000000000000000000000000000000000000000000000"
    blackPawns =   "0000000000000000000000000000000000000000000000001111111100000000"
    whiteKnights = "0100001000000000000000000000000000000000000000000000000000000000"
    blackKnights = "0000000000000000000000000000000000000000000000000000000001000010"
    whiteBishops = "0010010000000000000000000000000000000000000000000000000000000000"
    blackBishops = "0000000000000000000000000000000000000000000000000000000000100100"
    whiteRooks =   "1000000100000000000000000000000000000000000000000000000000000000"
    blackRooks =   "0000000000000000000000000000000000000000000000000000000010000001"
    whiteQueens =  "0001000000000000000000000000000000000000000000000000000000000000"
    blackQueens =  "0000000000000000000000000000000000000000000000000000000000010000"
    whiteKing =    "0000100000000000000000000000000000000000000000000000000000000000"
    blackKing =    "0000000000000000000000000000000000000000000000000000000000001000"
    bitBoard = ""
    for i in 0..<64 {
      if whitePawns[whitePawns.index(whitePawns.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("P")
      } else if blackPawns[blackPawns.index(blackPawns.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("p")
      } else if whiteKnights[whiteKnights.index(whiteKnights.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("N")
      } else if blackKnights[blackKnights.index(blackKnights.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("n")
      } else if whiteBishops[whiteBishops.index(whiteBishops.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("B")
      } else if blackBishops[blackBishops.index(blackBishops.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("b")
      } else if whiteRooks[whiteRooks.index(whiteRooks.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("R")
      } else if blackRooks[blackRooks.index(blackRooks.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("r")
      } else if whiteQueens[whiteQueens.index(whiteQueens.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("Q")
      } else if blackQueens[blackQueens.index(blackQueens.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("q")
      } else if whiteKing[whiteKing.index(whiteKing.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("K")
      } else if blackKing[blackKing.index(blackKing.startIndex, offsetBy: i)] == "1" {
        bitBoard.append("k")
      } else {
        bitBoard.append(".")
      }
    }
    print(bitBoard + "\n Initialized board")
  }
}
