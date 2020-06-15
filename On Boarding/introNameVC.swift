//
//  introNameVC.swift
//  NC3
//
//  Created by Adella Amanda on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import UIKit

class introNameVC: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    var obj = UserModel()
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? showNamaVC {
            destVC.object = self.obj
        }
    }
    
    @IBAction func namaButton(_ sender: Any) {
    
   // performSegue(withIdentifier: "namamuncul", sender: nil)
        
    }
    
  
}
    
extension introNameVC: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        obj.username = textField.text!
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        obj.username = textField.text!
        textField.resignFirstResponder()
        print(obj.username)
        return true
    }
}



