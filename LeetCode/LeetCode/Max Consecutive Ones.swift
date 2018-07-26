//
//  Max Consecutive Ones.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

import Foundation

class FindMaxConsecutiveOnes {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var finalCount: Int  = 0
        var tempCount = 0
        for x in 0 ..< nums.count {
            if nums[x] == 1 { tempCount += 1 } else {
                finalCount = max(tempCount, finalCount)
                tempCount = 0
            }
        }
        return max(tempCount, finalCount)
    }
}
