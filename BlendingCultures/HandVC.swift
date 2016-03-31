//
//  HandVC.swift
//  BlendingCultures
//
//  Created by 松下慶大 on 2016/03/31.
//  Copyright © 2016年 matsushita keita. All rights reserved.
//

import UIKit

class HandVC: UITableViewController {

    private var dataSource = HandDataSource(dataObject: Hand())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = dataSource
        self.tableView.registerNib(UINib(nibName: "CardCell", bundle: nil), forCellReuseIdentifier: "CardCell")
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addNewCard:")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Action
    func addNewCard(sender: UIBarButtonItem) {
        dataSource.addItemTo(self.tableView)
    }
    

    
}
