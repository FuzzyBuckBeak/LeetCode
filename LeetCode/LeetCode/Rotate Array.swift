//
//  Rotate Array.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 7/27/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************
Given an array, rotate the array to the right by k steps, where k is non-negative.

Example 1:

Input: [1,2,3,4,5,6,7] and k = 3
Output: [5,6,7,1,2,3,4]
Explanation:
rotate 1 steps to the right: [7,1,2,3,4,5,6]
rotate 2 steps to the right: [6,7,1,2,3,4,5]
rotate 3 steps to the right: [5,6,7,1,2,3,4]
*************************************************************************************************************************************************************/

import Foundation

class Rotate {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if nums.count >= k {
            nums = Array(nums.suffix(k) + nums.prefix(nums.count - k))
        } else {
            nums = nums.reversed()
        }
        
    }
}
