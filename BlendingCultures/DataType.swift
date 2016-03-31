//
//  DataType.swift
//  BlendingCultures
//
//  Created by 松下慶大 on 2016/03/31.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit

protocol DataType {
    
    var numberOfItem: Int{get}
    func addNewItemAtIndex(index: Int) -> Self
    func deleteItemAtIndex(index: Int) -> Self
    func moveItem(fromIndex: Int, toIndex: Int) -> Self
}
