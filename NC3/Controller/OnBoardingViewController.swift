//
//  OnBoardingViewController.swift
//  NC3
//
//  Created by Sherwin Yang on 16/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import UIKit

class OnBoardingViewController: UIViewController {

    @IBOutlet var lanjutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lanjutButton.customizeButton()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func lanjutButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toIntroName", sender: self)
    }

}
