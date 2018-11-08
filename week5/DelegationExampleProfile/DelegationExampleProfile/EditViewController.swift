//
//  ProfileViewController.swift
//  DelegationExampleProfile
//
//  Created by Shashank Sharma on 11/7/18.
//  Copyright © 2018 RU Angry. All rights reserved.
//

import UIKit

protocol ProfileDelegate {
    func editProfile(name: String, age: String, email: String)
}

class EditViewController: UIViewController {

    var profileDelegate: ProfileDelegate?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func buttonTapped(_ sender: Any) {
        let name = nameTextField.text ?? ""
        let age = ageTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        profileDelegate?.editProfile(name: name, age: age, email: email)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
