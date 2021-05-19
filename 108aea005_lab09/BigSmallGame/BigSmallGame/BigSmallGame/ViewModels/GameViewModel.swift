//
//  GameViewModel.swift
//  BigSmallGame
//
//  Created by SHIH-YING PAN on 2021/5/17.
//

import Foundation

class GameViewModel: ObservableObject {
    @Published var playerCard: Card?
    @Published var computerCard: Card?
    @Published var result: GameResult?
    
    var cards: [Card] = {
        var cards = [Card]()
        for suit in Card.Suit.allCases {
            let card = Card(suit: suit)
            cards.append(card)
        }
        return cards
    }()
    
    var cardss: [Card] = {
        var cardss = [Card]()
        for suit in Card.Suit.allCases {
            let card = Card(suit: suit)
            cardss.append(card)
        }
        return cardss
    }()
    
    func play() {
        cards.shuffle()
        cardss.shuffle()
        playerCard = cards[0]
        computerCard = cardss[0]
        result = checkResult()
    }
    
    func checkResult() ->  GameResult
     {
        if playerCard?.suit.rawValue == "👊" {
            if computerCard?.suit.rawValue == "👊"{
                return .draw
            }
            else if computerCard?.suit.rawValue == "🖐"{
                return .lose
            }
            else if computerCard?.suit.rawValue == "✌️"{
                return .win
            }
        }
        else if playerCard?.suit.rawValue == "🖐" {
            if computerCard?.suit.rawValue == "🖐"{
                return .draw
            }
            else if computerCard?.suit.rawValue == "✌️"{
                return .lose
            }
            else if computerCard?.suit.rawValue == "👊"{
                return .win
            }
            
        }
        else if playerCard?.suit.rawValue == "✌️" {
            if computerCard?.suit.rawValue == "👊"{
                return .lose
            }
            else if computerCard?.suit.rawValue == "🖐"{
                return .win
            }
            else if computerCard?.suit.rawValue == "✌️"{
                return .draw
            }
        }
        return .defaults
    }
    
    
}
