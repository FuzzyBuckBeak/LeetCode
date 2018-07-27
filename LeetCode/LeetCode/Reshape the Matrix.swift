//
//  Reshape the Matrix.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/27/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

import Foundation

class MatrixReshape {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        guard !nums.isEmpty else { return [[]] }
        if nums.count * nums[0].count != r * c { return nums }
        var array = Array(repeating: Array(repeating: 0, count: c), count: r)
        let result = nums.flatMap { $0 }

        var count = 0
        for i in 0 ..< r {
            for j in 0 ..< c {
                array[i][j] = result[count]
                count += 1
            }
        }
        return array
    }
}
