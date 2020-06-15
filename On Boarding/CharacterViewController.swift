//
//  CharacterViewController.swift
//  NC3
//
//  Created by Adella Amanda on 13/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let items = ["Robot 1", "Robot 2", "Robot 3", "Robot 4"]
    
    @IBOutlet weak var nameLabel: UILabel!
    var object: UserModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        configUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? CollectionViewController {
            destVC.object = self.object
        }
    }

    func configUI() {
        guard let obj = object else { return }
        nameLabel.text = obj.username
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CharacterCollectionViewCell
        cell.charImage.image = UIImage(named: "Robot 1")
        cell.charImage.image = UIImage(named: "Robot 2")
        cell.charImage.image = UIImage(named: "Robot 3")
        cell.charImage.image = UIImage(named: "Robot 4")
//        (contentsOfFile: "\(items[indexPath.row])")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }
}


