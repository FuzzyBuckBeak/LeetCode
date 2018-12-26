//
//   maximum Gap
//
//  Created by FuzzyBuckBeak on 12/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*******************************************************************************************
 Given an unsorted array, find the maximum difference between the successive elements in its sorted form.
 
 Return 0 if the array contains less than 2 elements.
 Time Complexity: 0(nlogn)
 *******************************************************************************************/
import Foundation

class Find {
    func maximumGap(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0}
        let sortedArray = nums.sorted()
        var maxGap = 0
        
        for i in 1 ..< sortedArray.count {
            let value = sortedArray[i] - sortedArray[i - 1]
            if  value > maxGap {
                maxGap = value
            }
        }
        
        return maxGap
        
    }
}
