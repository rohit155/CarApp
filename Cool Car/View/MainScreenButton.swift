//
//  MainScreenButton.swift
//  Cool Car
//
//  Created by Rohit Jangid on 06/09/20.
//  Copyright © 2020 Rohit Jangid. All rights reserved.
//

import UIKit

class MainScreenButton: UIButton {

    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.init(red: 216, green: 185, blue: 195, alpha: 1).cgColor
    }

}
