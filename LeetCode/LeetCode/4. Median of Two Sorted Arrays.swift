//
//  4. Median of Two Sorted Arrays.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 8/3/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************
 There are two sorted arrays nums1 and nums2 of size m and n respectively.
 
 Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
 
 You may assume nums1 and nums2 cannot be both empty.
*************************************************************************************************************************************************************/

import Foundation

class FindMedianSortedArrays {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let result = (nums1 + nums2).sorted(by: <)
        var median: Double = 0.0
        let value = result.count / 2
        if result.count % 2 == 0 {
            median = Double(result[value] + result[value - 1]) / 2
        } else {
            median = Double(result[value])
        }
        
        return median
    }
}
