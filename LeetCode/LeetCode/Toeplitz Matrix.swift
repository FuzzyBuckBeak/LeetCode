//
//  Toeplitz Matrix.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

import Foundation

class IsToeplitzMatrix {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        
        for i in stride(from: 0, to: matrix.count - 1, by: 1) {
            for j in stride(from: 0, to: matrix[i].count - 1, by: 1) {
                if matrix[i][j] != matrix[i+1][j+1] {
                    return false
                }
            }
        }
        
        return true
    }
}
