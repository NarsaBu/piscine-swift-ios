import Foundation

class Deck: NSObject
{
    static var allSuits: [Card] = Value.allValues.map({Card(color: Color.Suits, value: $0)})
    static var allHearts: [Card] = Value.allValues.map({Card(color: Color.Hearts, value: $0)})
    static var allDiamonds: [Card] = Value.allValues.map({Card(color: Color.Diamonds, value: $0)})
    static var allClubs: [Card] = Value.allValues.map({Card(color: Color.Clubs, value: $0)})
    
    static var allCards = allSuits + allHearts + allDiamonds + allClubs
    
    var cards: [Card] = allCards
    var discards: [Card] = []
    var outs: [Card] = []
    
    init(mixed: Bool)
    {
        self.cards = Deck.allCards
        if !mixed
        {
            self.cards.shuffle()
        }
    }
    
    override public var description: String
    {
        return self.cards.description
    }
    
    func draw() -> Card?
    {
        var first : Card?
        
        first = self.cards.first
        self.outs.append(first!)
        self.cards.remove(at:0)
        return first
    }
    
    func fold(c: Card)
    {
        var index = 0
        for elem in self.outs
        {
            if c == elem
            {
                self.discards.append(elem)
                self.outs.remove(at:index)
            }
            index = index + 1
        }
    }
}
