import Foundation

class Deck: NSObject
{
	static var allSuits: [Card] = Value.allValues.map({Card(color: Color.Suits, value: $0)})
    static var allHearts: [Card] = Value.allValues.map({Card(color: Color.Hearts, value: $0)})
    static var allDiamonds: [Card] = Value.allValues.map({Card(color: Color.Diamonds, value: $0)})
    static var allClubs: [Card] = Value.allValues.map({Card(color: Color.Clubs, value: $0)})

	static let allCards = allSpades + allDiamonds + allHearts + allClubs
}