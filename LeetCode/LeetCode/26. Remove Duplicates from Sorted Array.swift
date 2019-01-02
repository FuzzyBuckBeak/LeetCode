//
//  26. Remove Duplicates from Sorted Array.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 7/31/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************

 Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
 
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 
 Example 1:
 
 Given nums = [1,1,2],
 
 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
 
 It doesn't matter what you leave beyond the returned length.

*************************************************************************************************************************************************************/

import Foundation

//My Solution
class RemoveDuplicates {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums = Array(Set(nums)).sorted {$0 < $1}
        return nums.count
    }
}
