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
    var object: UserModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        configUI()
    }
    

    func configUI() {
        guard let obj = object else { return }
        nameLabel.text = obj.username
    }

   

}
