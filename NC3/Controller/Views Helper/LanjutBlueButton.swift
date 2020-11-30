//
//  LanjutBlueButton.swift
//  NC3
//
//  Created by Sherwin Yang on 16/06/20.
//  Copyright © 2020 Sherwin Yang. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func customizeButton() {
        layer.cornerRadius = 6
        layer.shadowOpacity = 0.25
        layer.shadowColor = UIColor(red: 0/256, green: 0/256, blue: 0/256, alpha: 1).cgColor
        layer.shadowRadius = 4
    }
}
