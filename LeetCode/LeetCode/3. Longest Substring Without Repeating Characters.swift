//
//  3. Longest Substring Without Repeating Characters.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 8/3/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************
 Given a string, find the length of the longest substring without repeating characters.
 
 Examples:
 
 Given "abcabcbb", the answer is "abc", which the length is 3.
 
 Given "bbbbb", the answer is "b", with the length of 1.
 
 Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
*************************************************************************************************************************************************************/

import Foundation

class LengthOfLongestSubstring {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var length = 0
        var substring: [Character] = []
        for c in s {
            if substring.contains(c) {
                length = max(length, substring.count)
                substring.removeSubrange(0 ... substring.index(of: c)!)
            }
            substring.append(c)
        }
        
        return max(length, substring.count)
    }
}
