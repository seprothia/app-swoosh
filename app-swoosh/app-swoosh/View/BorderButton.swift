//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Benjamin Wilson on 16/12/2017.
//  Copyright © 2017 Benjamin Wilson. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib() // Super calls the parent (UIButton)
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
