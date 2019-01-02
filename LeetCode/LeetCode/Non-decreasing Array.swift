//
//  Non-decreasing Array.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

import Foundation

class CheckPossibility {
    func checkPossibility(_ nums: [Int]) -> Bool {
        
        for i in 0 ..< nums.count - 1 {
            if nums[i+1] - nums[i] != 1 {
                return false
            }
        }
        return true
    }
}
