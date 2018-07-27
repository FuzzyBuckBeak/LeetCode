//
//  Move Zeroes.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 7/27/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************
Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
*************************************************************************************************************************************************************/

import Foundation

class MoveZeroes {
    func moveZeroes(_ nums: inout [Int]) {
        let count = nums.count
        nums = nums.filter { $0 != 0}
        for _ in 0 ..< (count - nums.count) { nums.append(0) }
    }
}
