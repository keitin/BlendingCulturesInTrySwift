//
//  Card.swift
//  BlendingCultures
//
//  Created by 松下慶大 on 2016/03/31.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit
struct Card {
    var color: UIColor!
    var rank: Rank
    var suit: Suit
    
    init() {
        self.rank = Rank()
        self.suit = Suit()
        
        if self.suit.description == "♡" || self.suit.description == "◇" {
            self.color = UIColor.redColor()
        } else {
            self.color = UIColor.blackColor()
        }
    }
    
}
