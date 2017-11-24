//
//  curruncyTextField.swift
//  simple-calculator
//
//  Created by Eunseok on 2017. 11. 23..
//  Copyright © 2017년 Eunseok. All rights reserved.
//

import UIKit

@IBDesignable
class curruncyTextField: UITextField {
    
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size/2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formmater = NumberFormatter()
        formmater.numberStyle = .currency
        formmater.locale = .current
        currencyLbl.text = formmater.currencySymbol
        addSubview(currencyLbl)
    }
    
    
    override func prepareForInterfaceBuilder() {
        customizedUI()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedUI()
            
    }
    
    func customizedUI(){
        backgroundColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 0.25)
        layer.cornerRadius = 5
        textAlignment = .center
        
        clipsToBounds = true
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    }

}
