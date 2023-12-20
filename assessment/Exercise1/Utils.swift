//
//  Utils.swift
//  assessment
//
//  Created by Yazmin Carmona Barrera on 20/12/23.
//

import Foundation



class Utils {
    
    class func sumOfEvenNumbers(numbers: [Int]) -> Int {
        let eventNumbers = numbers.filter{ $0 % 2 == 0 }
        let sum =  eventNumbers.reduce(0, +)
        return sum
    }

}
