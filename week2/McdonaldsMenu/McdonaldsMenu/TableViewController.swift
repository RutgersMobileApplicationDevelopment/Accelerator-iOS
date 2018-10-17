//
//  TableViewController.swift
//  McdonaldsMenu
//
//  Created by Salman Fakhri on 10/17/18.
//  Copyright © 2018 Rutgers Mobile App Development. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    /*
     
     TASK: Build an app that displays menus items from the data provided in "menu"
     
     1) Group work
     
     Your app should
     * Have two sections, one for burgers and one for deserts
     * Each section header should have a title
     * the cells for each menu item should display
        - the item name
        - the price of the item
     
     2) Home Work
     
        - Try to add images to the cells
        - show calories for each item

     */
    
    let menu = MenuData().menu
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // implement the functions below
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        <#code#>
    }
    
    // optional
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        <#code#>
    }
    
    
}
