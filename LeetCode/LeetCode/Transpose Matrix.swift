//
//  Transpose Matrix.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//


/*************************************************************************************************************************************************************
Given a matrix A, return the transpose of A.
 
The transpose of a matrix is the matrix flipped over it's main diagonal, switching the row and column indices of the matrix.
*************************************************************************************************************************************************************/

//Input: [[1,2,3],[4,5,6],[7,8,9]]
//Output: [[1,4,7],[2,5,8],[3,6,9]]

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
