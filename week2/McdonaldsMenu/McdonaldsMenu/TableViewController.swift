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
        return menu.sections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            menu.burgers.count
        } else {
            menu.deserts.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier")!
        //cell.textLabel?.text = menu.sections
        if (indexPath.section) == 0 {
            cell.textLabel?.text
        } else if (indexPath.section) == 1{
            
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        <#code#>
    }
    
    // optional
    
    
}
