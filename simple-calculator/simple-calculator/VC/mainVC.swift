//
//  ViewController.swift
//  simple-calculator
//
//  Created by Eunseok on 2017. 11. 23..
//  Copyright © 2017년 Eunseok. All rights reserved.
//

import UIKit

class mainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: curruncyTextField!
    @IBOutlet weak var priceTxt: curruncyTextField!
    
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var txtLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame:CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(mainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        hoursLbl.isHidden = true
        txtLbl.isHidden = true
        
    
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                hoursLbl.isHidden = false
                txtLbl.isHidden = false
                hoursLbl.text = "\(Wage.getHours(wage: wage, price: price))"
            }
        }
    }

    @IBAction func clearBtnPressed(_ sender: Any) {
        hoursLbl.isHidden = true
        txtLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }

}

