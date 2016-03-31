//
//  Hand.swift
//  BlendingCultures
//
//  Created by 松下慶大 on 2016/03/31.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit
struct Hand: DataType {
    
    private var deck = Deck()
    private var cards = [Card]()
    
    init() {}
    
    private init(deck: Deck, cards: [Card]) {
        self.deck = deck
        self.cards = cards
    }
    
    subscript(index: Int) -> Card {
        return cards[index]
    }
    
    var numberOfItem: Int {
        return cards.count
    }
    
    func addNewItemAtIndex(index: Int) -> Hand {
        let hand = insertItem(deck.nextCard(), atIndex: index)
        return hand

    }
    
    private func insertItem(card: Card, atIndex index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(card, atIndex: index)
        return Hand(deck: deck, cards: mutableCards)
    }
    
    func deleteItemAtIndex(index: Int) -> Hand {
        var mutableCards = cards
        
        mutableCards.removeAtIndex(index)
        return Hand(deck: deck, cards: mutableCards)
    }
    
    func moveItem(fromIndex: Int, toIndex: Int) -> Hand {
        return deleteItemAtIndex(fromIndex).insertItem(cards[fromIndex], atIndex: toIndex)
    }
    
}