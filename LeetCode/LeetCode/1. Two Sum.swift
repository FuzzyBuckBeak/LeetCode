//
//  Two Sum.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

import Foundation

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for i in 0..<nums.count {
            if let mapped = map[target - nums[i]] {
                return [mapped,i]
            }
            map[nums[i]] = i
        }
        return []
    }
    
    
    func sumToTwoNumbersArray(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0 ..< nums.count {
            for j in i ..< nums.count {
                if nums[i]+nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
    
    func sumToTwoNumbers(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0 ..< nums.count {
            let value = target - nums[i]
            if nums.contains(target - nums[i]) && nums.index(of: value) != i{
                return [i, nums.index(of: value)!]
            }
        }
        return []
    }
}
