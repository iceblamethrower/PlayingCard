//
//  ViewController.swift
//  PlayingCard
//
//  Created by Roman Gorshkov on 28/05/2019.
//  Copyright © 2019 Roman Gorshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 0...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }
}

