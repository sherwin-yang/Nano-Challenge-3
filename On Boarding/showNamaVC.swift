//
//  showNamaVC.swift
//  NC3
//
//  Created by Adella Amanda on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import UIKit

class showNamaVC: UIViewController {

    @IBOutlet weak var namaLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var introNamaLabel: UILabel!
    @IBOutlet weak var introNamaButton: UIButton!
    
    var pictNama: [UIImage] = [#imageLiteral(resourceName: "boarding 4")]
    var object: UserModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configUI()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? CharacterViewController {
            destVC.object = self.object
        }
    }
    
    func configUI() {
        guard let obj = object else { return }
        namaLabel.text = obj.username
    }
 

}
