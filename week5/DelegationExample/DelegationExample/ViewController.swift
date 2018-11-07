//
//  ViewController.swift
//  DelegationExample
//
//  Created by Salman Fakhri on 11/6/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {

    }

    @IBAction func colorButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "colorSelectionSegue", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "colorSelectionSegue" {
            let tableVC = segue.destination as! TableViewController
            tableVC.bgColorDelegate = self
        }
    }
}

extension ViewController: BackgroundColorDelegate {
    func changeBackgroundColor(to colorName: String) {
        switch colorName {
        case "red":
            view.backgroundColor = .red
        case "blue":
            view.backgroundColor = .blue
        case "green":
            view.backgroundColor = .green
        default:
            print("color not found")
        }
    }
}


