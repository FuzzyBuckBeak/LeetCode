//
//  Jewels and Stones.swift
//  LeetCode
//
//  Created by FuzzyBuckBeak on 7/25/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

import Foundation


class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var jewels = 0
        for s in S where J.contains(s) { jewels += 1 }
        return jewels
    }
}
