//
//  HandDataSource.swift
//  BlendingCultures
//
//  Created by 松下慶大 on 2016/03/31.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit

class HandDataSource: DataSource {

    init(dataObject: Hand) {
        super.init(dataObject: dataObject)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier("CardCell", forIndexPath: indexPath) as? CardCell,
            let hand = dataObject as? Hand else {
                fatalError("Coud not create CardCell")
        }
        cell.fillWith(hand[indexPath.row])
        return cell
    }
    
    override var conditionForAdding: Bool {
        return dataObject.numberOfItem < 5
    }
    
    
}
