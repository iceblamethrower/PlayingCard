//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Roman Gorshkov on 29/05/2019.
//  Copyright © 2019 Roman Gorshkov. All rights reserved.
//

import Foundation

struct PlayingCardDeck {
    
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    mutating func draw() -> PlayingCard? {
        guard cards.count == 0 else {
            return cards.remove(at: Int.random(in: 0...cards.count - 1))
        }
        return nil
    }
}
