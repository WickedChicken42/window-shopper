//
//  Wage.swift
//  window-shopper
//
//  Created by James Ullom on 8/28/18.
//  Copyright © 2018 Hammer of the Gods Software. All rights reserved.
//

import Foundation

class Wage {
    // Define the function as a class function so that it can be used without instantiating a varibale of the clasas type.
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        // This will pass the unit testing
        return Int(ceil(price / wage))

        // This fail the Unit tests
        //return Int(round(price / wage))
    }
    
}
