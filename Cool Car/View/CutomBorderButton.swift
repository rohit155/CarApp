//
//  CutomBorderButton.swift
//  Cool Car
//
//  Created by Rohit Jangid on 07/09/20.
//  Copyright © 2020 Rohit Jangid. All rights reserved.
//

import UIKit

class CutomBorderButton: UIButton {

    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 5
        layer.masksToBounds = true
    }

}
