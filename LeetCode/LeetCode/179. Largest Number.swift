//
//   Largest Number
//
//  Created by FuzzyBuckBeak on 12/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*******************************************************************************************
 Given a list of non negative integers, arrange them such that they form the largest number.
 
 Example 1:
 
 Input: [10,2]
 Output: "210"
 Example 2:
 
 Input: [3,30,34,5,9]
 Output: "9534330"
 *******************************************************************************************/
import Foundation

class Solution {
    func largestNumber(_ nums: [Int]) -> String {
        let res = nums.map{ "\($0)" }.sorted(by: {$0 + $1 > $1 + $0}).joined()
        return res.first == "0" ? "0" : res
    }
}
