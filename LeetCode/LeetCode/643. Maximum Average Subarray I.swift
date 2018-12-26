//
//  643. Maximum Average Subarray I.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 7/31/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************

 Given an array consisting of n integers, find the contiguous subarray of given length k that has the maximum average value. And you need to output the maximum average value.
 
 Example 1:
 Input: [1,12,-5,-6,50,3], k = 4
 Output: 12.75
 Explanation: Maximum average is (12-5-6+50)/4 = 51/4 = 12.75

*************************************************************************************************************************************************************/

import Foundation

class FindMaxAverage {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        let sortedArray = nums.sorted { abs($0) > abs($1) }
        return(Double(sortedArray.prefix(k).reduce(0, +)) / Double(k))
        
    }
}

