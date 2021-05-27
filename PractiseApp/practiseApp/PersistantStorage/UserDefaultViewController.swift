//
//  UserDefaultViewController.swift
//  practiseApp
//
//  Created by systimanx on 25/05/21.
//

import UIKit

class UserDefaultViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = UserDefaults.standard.string(forKey: "myTextData")
        if value != nil {
            textLabel.text = value
        } else {
            textLabel.text = "Your Text Here"
        }

        }
    

    @IBAction func submitBtn(_ sender: Any) {
        textLabel.text = textField.text
        UserDefaults.standard.set(textField.text,forKey: "myTextData")
    }
    

}
