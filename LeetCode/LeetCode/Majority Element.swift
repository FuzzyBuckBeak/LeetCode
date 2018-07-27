//
//  Majority Element.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 
 You may assume that the array is non-empty and the majority element always exist in the array.
 
 Example 1:
 
 Input: [3,2,3]
 Output: 3
 
 *************************************************************************************************************************************************************/

import Foundation
import UIKit

//Solution 1: Using Hashing
class MajorityElementSolution1 {
    func majorityElement(_ nums: [Int]) -> Int {
        var hash: [Int: Int] = [:]
        for x in nums {
            if let value = hash[x] {
                hash[x] = value + 1
            } else {
                hash[x] = 1
            }
        }
        
        for (key, value) in hash {
            if value > nums.count / 2 { return key }
        }
        
        return 0
    }
}

//Solution 2: Smart Solution - learnt from others
class MajorityElementSolution2 {
    func majorityElement(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums[0] }
        var majority = nums[0]
        var count = 1
        
        for i in 0 ..< nums.count {
            if nums[i] == majority {
                count += 1
            } else {
                count -= 1
                if count == 0 {
                    count += 1
                    majority = nums[i]
                }
            }
        }
        
        return majority
    }
}
