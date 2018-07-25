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
}
