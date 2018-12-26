//
//  Find Numbers Disappeared.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 7/27/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************
Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

Find all the elements of [1, n] inclusive that do not appear in this array.

Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.

Input: [4,3,2,7,8,2,3,1]
Output: [5,6]
*************************************************************************************************************************************************************/

import Foundation

class FindDisappearedNumbers {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        let max = nums.max()!
        var result: [Int] = [Int]()
        for i in 1 ... max {
            if !nums.contains(i) { result.append(i)}
        }
        return result
    }
}
