//
//  Rank.swift
//  BlendingCultures
//
//  Created by 松下慶大 on 2016/03/31.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit
struct Rank {
    
    var description: String
    
    init() {
        self.description = String(arc4random() % 13 + 1)
    }
}