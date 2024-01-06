//
//  ViewController.swift
//  Eventy
//
//  Created by Boss on 06/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var togleSwitch: UISwitch!
    @IBOutlet weak var WelcomeName: UILabel!
    @IBOutlet weak var NameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitButton(_ sender: UIButton) {
        let name=NameField.text ?? ""
        WelcomeName.text="Welcome, \(name)"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        NameField.resignFirstResponder()
    }
    
    @IBAction func toggleSwitched(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .white
            WelcomeName.textColor = .black
            NameField.textColor = .black
            NameField.backgroundColor = . white
        } else {
            self.view.backgroundColor = .darkGray
            WelcomeName.textColor = .white
            NameField.textColor = .white
            NameField.backgroundColor = . darkGray
        }
        
    }
}
