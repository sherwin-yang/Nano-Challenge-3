//
//  CollectionViewController.swift
//  NC3
//
//  Created by Adella Amanda on 13/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var userAvatar: UIImageView!
    @IBOutlet var lanjutButton: UIButton!
    
    var userName: String?
    var userAvatarString = "Robot 1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lanjutButton.customizeButton()

        nameLabel.text = userName
        userAvatar.image = UIImage(named: userAvatarString)
    }
    
    @IBAction func lanjutButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toMainGame", sender: self)
    }

}
