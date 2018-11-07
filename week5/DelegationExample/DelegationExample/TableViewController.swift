//
//  TableViewController.swift
//  DelegationExample
//
//  Created by Salman Fakhri on 11/6/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import UIKit

protocol BackgroundColorDelegate {
    func changeBackgroundColor(to colorName: String)
}

class TableViewController: UITableViewController {
    
    var colors: [String] = ["red", "blue", "green"]
    var bgColorDelegate: BackgroundColorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        bgColorDelegate?.changeBackgroundColor(to: colors[indexPath.row])
        navigationController?.popViewController(animated: true)
    }

    

}
