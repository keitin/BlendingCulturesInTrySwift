//
//  SourceType.swift
//  BlendingCultures
//
//  Created by 松下慶大 on 2016/03/31.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit

protocol SourceType: UITableViewDataSource {
    
    var dataObject: DataType {get set}
    var conditionForAdding: Bool{get}
    
    func insertTopRowIn(tableView: UITableView)
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView)
    
}


extension SourceType {
    
    func insertTopRowIn(tableView: UITableView) {
        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
    }
    
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView) {
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    }
}


