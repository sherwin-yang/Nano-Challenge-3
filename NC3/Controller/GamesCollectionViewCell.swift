//
//  GamesCollectionViewCell.swift
//  Gim Malam Ini
//
//  Created by Antonius F Aulia on 06/05/20.
//  Copyright © 2020 Tim 14. All rights reserved.
//

import UIKit

class GamesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var gameTitleLable: UILabel!
    @IBOutlet weak var gameDescriptionLabel: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        contentView.backgroundColor = .none
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func layoutSubviews() {
//        // cell rounded section
//        self.layer.cornerRadius = 15.0
//        self.layer.borderWidth = 5.0
//        self.layer.borderColor = UIColor.clear.cgColor
//        self.layer.masksToBounds = true
        
//        // cell shadow section
//        self.contentView.layer.cornerRadius = 15.0
//        self.contentView.layer.borderWidth = 5.0
//        self.contentView.layer.borderColor = UIColor.clear.cgColor
//        self.contentView.layer.masksToBounds = true
//        self.layer.shadowColor = UIColor.white.cgColor
//        self.layer.shadowOffset = CGSize(width: 0, height: 0.0)
//        self.layer.shadowRadius = 6.0
//        self.layer.shadowOpacity = 0.6
//        self.layer.cornerRadius = 15.0
//        self.layer.masksToBounds = false
//        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
    }
}
