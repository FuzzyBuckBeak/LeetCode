//
//   Wiggle Sort II
//
//  Created by FuzzyBuckBeak on 12/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*******************************************************************************************
 Given an unsorted array nums, reorder it such that nums[0] < nums[1] > nums[2] < nums[3]....
 
 Example 1:
 
 Input: nums = [1, 5, 1, 1, 6, 4]
 Output: One possible answer is [1, 4, 1, 5, 1, 6].
 Example 2:
 
 Input: nums = [1, 3, 2, 2, 3, 1]
 Output: One possible answer is [2, 3, 1, 3, 1, 2].
 *******************************************************************************************/

import Foundation

class WiggleSort {
    func wiggleSort(_ nums: inout [Int]) {
        let sortedNums = nums.sorted()
        
        var leftPointer = (nums.count - 1) / 2
        var rightPointer = nums.count - 1
        
        for i in 0 ..< sortedNums.count {
            if i % 2 == 1 {
                nums[i] = sortedNums[rightPointer]
                rightPointer -= 1
            } else {
                nums[i] = sortedNums[leftPointer]
                leftPointer -= 1
            }
        }
    }
}
