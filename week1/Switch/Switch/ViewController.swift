//
//  ViewController.swift
//  Switch
//
//  Created by Vineeth Puli on 10/10/18.
//  Copyright © 2018 RUMAD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    enum Colors {
        case Red
        case Blue
        case Green
        case White
    }
    
    var currColor: Colors = Colors.Red
    
    @IBAction func buttonClicked(_ sender: Any) {
        switch currColor {
        case .Red:
            self.view.backgroundColor = UIColor.red
            myLabel.text = "Red"
            currColor = .Blue
        case .Blue:
            self.view.backgroundColor = UIColor.blue
            myLabel.text = "Blue"
            currColor = .Green
        case .Green:
            self.view.backgroundColor = UIColor.green
            myLabel.text = "Green"
            currColor = .White
        case .White:
            self.view.backgroundColor = UIColor.white
            myLabel.text = "White"
            currColor = .Red
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = "Switch"
        print("Hello World")
    }
}

