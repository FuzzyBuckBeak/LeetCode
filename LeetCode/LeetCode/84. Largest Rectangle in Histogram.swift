//
//  84. Largest Rectangle in Histogram.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 8/4/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************
 Given n non-negative integers representing the histogram's bar height where the width of each bar is 1, find the area of largest rectangle in the histogram.
 
 
 Above is a histogram where width of each bar is 1, given height = [2,1,5,6,2,3].
 The largest rectangle is shown in the shaded area, which has area = 10 unit.

*************************************************************************************************************************************************************/

import Foundation

class Stack<Element> {
    private var array: [Element] = []
    
    func push(_ element: Element) {
        array.append(element)
    }
    
    func pop() -> Element? {
        return array.popLast()
    }
    
    func peek() -> Element? {
        return array.last
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
}



class LargestRectangleArea {
    let histoStack = Stack<Int>()
    var i = 0
    var maxArea = 0
    var area = 0
   
    func largestRectangleArea(_ heights: [Int]) -> Int {
        while i < heights.count {
            if histoStack.isEmpty() || heights[histoStack.peek()!] <= heights[i] {
                histoStack.push(i)
                i += 1
            } else {
                area = actionPeekGreaterThanHeight(heights)
                maxArea = max(area, maxArea)
            }
        }
        
        while !histoStack.isEmpty() {
            area = actionPeekGreaterThanHeight(heights)
            maxArea = max(area, maxArea)
        }
        return maxArea
    }
    
    func actionPeekGreaterThanHeight(_ heights: [Int]) -> Int {
        let top = histoStack.peek()!
        _ = histoStack.pop()
        
        return heights[top] * (histoStack.isEmpty() ? i : i - histoStack.peek()! - 1)
    }
}
