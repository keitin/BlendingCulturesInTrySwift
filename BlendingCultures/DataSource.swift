//
//  DataSource.swift
//  BlendingCultures
//
//  Created by 松下慶大 on 2016/03/31.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource, SourceType {
    
    var dataObject: DataType 
    var conditionForAdding: Bool {
        return dataObject.numberOfItem < 5
    }
    
    init<A: DataType>(dataObject: A) {
        self.dataObject = dataObject
    }
    
    func addItemTo(tableView: UITableView) {
        if conditionForAdding {
            dataObject = dataObject.addNewItemAtIndex(0)
            insertTopRowIn(tableView)
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataObject.numberOfItem
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        fatalError("this method must be override")
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            dataObject = dataObject.deleteItemAtIndex(indexPath.row)
            deleteRowAtIndexPath(indexPath, from: tableView)
        }
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        dataObject.moveItem(sourceIndexPath.row, toIndex: destinationIndexPath.row)
    }
    
    
}
