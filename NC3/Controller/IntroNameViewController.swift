//
//  IntroNameViewController.swift
//  NC3
//
//  Created by Sherwin Yang on 16/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import UIKit

class IntroNameViewController: UIViewController {
    
    @IBOutlet var introNameView: UIView!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var lanjutButton: UIButton!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lanjutButton.customizeButton()
        
        introNameView.layer.cornerRadius = 30
        introNameView.layer.shadowColor = UIColor(red: 229/256, green: 229/256, blue: 229/256, alpha: 1.0).cgColor
        introNameView.layer.shadowOpacity = 1
        introNameView.layer.shadowOffset = .zero
        introNameView.layer.shadowRadius = 10
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func lanjutButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toShowName", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? ShowNameViewController {
            destVC.userName = userName
        }
    }
    
}

extension IntroNameViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        userName = nameTextField.text!
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userName = nameTextField.text!
        nameTextField.resignFirstResponder()
        return true
    }
}
