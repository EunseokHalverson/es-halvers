//
//  borderBtn.swift
//  demo-app
//
//  Created by Eunseok on 2017. 11. 19..
//  Copyright © 2017년 Eunseok. All rights reserved.
//

import UIKit

class borderBtn: UIButton {

    override func awakeFromNib() {
            super.awakeFromNib()
            layer.borderWidth = 2
            layer.borderColor = UIColor.white.cgColor
    }
    
}


