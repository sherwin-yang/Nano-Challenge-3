//
//  CharacterViewController.swift
//  NC3
//
//  Created by Adella Amanda on 13/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var lanjutButton: UIButton!
    
    var userName: String?
    var userAvatar: String = "Robot 1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lanjutButton.customizeButton()
        
        nameLabel.text = userName
        
    }
    
    @IBAction func lanjutButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toFinishOnboarding", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? CollectionViewController {
            destVC.userName = userName
            destVC.userAvatarString = userAvatar
        }
    }
    
}

extension CharacterViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CharacterCollectionViewCell
        cell.charImage.image = UIImage(named: "Robot \(indexPath.row)")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        userAvatar = "Robot \(indexPath.row)"
    }
}

