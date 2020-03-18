import Foundation

class Deck: NSObject
{
	static var allSuits: [Card] = Value.allValues.map({Card(color: Color.Suits, value: $0)})
    static var allHearts: [Card] = Value.allValues.map({Card(color: Color.Hearts, value: $0)})
    static var allDiamonds: [Card] = Value.allValues.map({Card(color: Color.Diamonds, value: $0)})
    static var allClubs: [Card] = Value.allValues.map({Card(color: Color.Clubs, value: $0)})

	static let allCards = allSpades + allDiamonds + allHearts + allClubs
}

extension Array
{
    mutating func shuffle()
    {
        var index = 0
        
        for i in 0..<self.count
        {
            index = Int(arc4random_uniform(UInt32(self.count)))
            if i != index
            {
                self.swapAt(i, index)
            }
        }
    }
}