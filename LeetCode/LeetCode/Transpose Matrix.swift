//
//  Transpose Matrix.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

import Foundation

class Transpose {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        
        var resultArray = Array(repeating: Array(repeating: 0, count: A.count), count: A[0].count)
        
        for i in stride(from: 0, to: A.count, by: 1) {
            for j in stride(from: 0, to: A[i].count, by: 1) {
                resultArray[j][i] = A[i][j]
            }
        }
        return resultArray
    }
}
