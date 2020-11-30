//
//  ShowNameViewController.swift
//  NC3
//
//  Created by Sherwin Yang on 16/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import UIKit

class ShowNameViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lanjutButton: UIButton!
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lanjutButton.customizeButton()
        
        nameLabel.text = "Hallo \(userName!)!"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func lanjutButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toChooseCharacter", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? CharacterViewController {
            destVC.userName = userName
        }
    }

}
