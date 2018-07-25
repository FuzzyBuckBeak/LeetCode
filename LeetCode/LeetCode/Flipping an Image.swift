//
//  Flipping an Image.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

import Foundation

class flipAndInvertImage {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        return A.map {  $0.reversed().map { $0 == 1 ? 0 : 1 } }
    }
}
