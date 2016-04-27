//
//  Tips.swift
//  Tip Calculator
//
//  Created by Dominic Rogers on 4/11/16.
//  Copyright © 2016 Dominic Rogers. All rights reserved.
//

import Foundation
class Tip{
    var satisfaction : Int = 0
    var mealPrice : Double = 0.0
    func calculateTip()->Double{
        var tip2 = 0.0
        if satisfaction == 0{
            tip2 = mealPrice * 0.005
        }else if satisfaction == 1{
            tip2 = mealPrice * 0.12
        }else if satisfaction == 2{
            tip2 = mealPrice * 0.17
        }else{
            print("Never see this")
        }
        return tip2
    }
    
}
