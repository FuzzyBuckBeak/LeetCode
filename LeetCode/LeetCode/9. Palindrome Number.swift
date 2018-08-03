//
//  9. Palindrome Number.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 8/3/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************

 Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.
 
 Example 1:
 
 Input: 121
 Output: true
 
 2345432
 
 Example 2:
 
 Input: -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a

*************************************************************************************************************************************************************/

import Foundation

class Palindrome {
    func isPalindrome(_ x: Int) -> Bool {
        var num = x
        var result = 0
        while num > 0 {
            let mod = num % 10
            num = num / 10
            result = result * 10 + mod
        }
        
        return (result == x)
    }
}
