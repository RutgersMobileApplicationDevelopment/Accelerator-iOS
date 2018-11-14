//
//  ViewController.swift
//  DelegationExampleProfile
//
//  Created by Shashank Sharma on 11/7/18.
//  Copyright © 2018 RU Angry. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBAction func buttonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "showEditViewController", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showEditViewController" {
            guard let editVC = segue.destination as? EditViewController else {
                return
            }
            
            editVC.profileDelegate = self
        }
    }

}

extension ProfileViewController: ProfileDelegate {
    func editProfile(name: String, age: String, email: String) {
        nameLabel.text = name
        ageLabel.text = age
        emailLabel.text = email
    }

}

