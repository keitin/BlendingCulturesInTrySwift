//
//  Suit.swift
//  BlendingCultures
//
//  Created by 松下慶大 on 2016/03/31.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit
struct Suit {
    
    var description: String
    
    init() {
        self.description = ["♡", "♧", "◇", "♤"][Int(arc4random() % 4)]
    }
}
