//
//  Wage.swift
//  simple-calculator
//
//  Created by Eunseok on 2017. 11. 24..
//  Copyright © 2017년 Eunseok. All rights reserved.
//

import Foundation


class Wage{
    class func getHours(wage: Double, price: Double) -> Int{
        return Int(ceil(price/wage))
    }
}
