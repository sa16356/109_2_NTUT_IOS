//
//  Card.swift
//  BigSmallGame
//
//  Created by SHIH-YING PAN on 2021/5/17.
//

import Foundation

struct Card {
    let suit: Suit
    enum Suit: String, CaseIterable {
        case rock = "👊"
        case scissors = "✌️"
        case paper = "🖐"

    }

}

