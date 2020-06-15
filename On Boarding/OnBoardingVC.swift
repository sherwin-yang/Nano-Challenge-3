//
//  OnBoardingVC.swift
//  NC3
//
//  Created by Adella Amanda on 12/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import UIKit

class OnBoardingVC: UIViewController {

    @IBOutlet weak var judulOB: UILabel!
    @IBOutlet weak var fotoOB: UIImageView!
    @IBOutlet weak var descOB: UILabel!
    @IBOutlet weak var OBLanjut: UIButton!
    
    var pictOB: [UIImage] = [#imageLiteral(resourceName: "boarding 3"), #imageLiteral(resourceName: "boarding 1"), #imageLiteral(resourceName: "boarding 3")]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    

    
    @IBAction func lanjutOB(_ sender: UIButton) {
        
        judulOB.text = introJudul.randomElement()
        indexJudul = indexJudul + 1
        if indexJudul < introJudul.count {
            judulOB.text = introJudul[indexJudul]
        } else {
            indexJudul = 0
            performSegue(withIdentifier: "toNextVC", sender: self)
        }
        
        descOB.text = introDesc.randomElement()
        indexDesc = indexDesc + 1
        if indexDesc < introDesc.count {
            descOB.text = introDesc[indexDesc]
        }else{
            indexDesc = 0
            performSegue(withIdentifier: "toNextVC", sender: self)
        }
        
        func randomOB() -> Void {
               fotoOB.image = pictOB[Int.random(in: 0...(pictOB.count - 1))]
           }
}

let introJudul = [ "Bermain Bersama", "Ajak Temanmu", "Karakter Unik" ]
var indexJudul = 0
    
    
    let introDesc = [ "Tes seberapa jauh daya ingatmu dengan cara yang seru", "Ajak teman dan keluarga mu bermain bersama dengan simpel", "Pilih nama dan karakter sesuai keinginan mu!"  ]
    var indexDesc = 0
}
