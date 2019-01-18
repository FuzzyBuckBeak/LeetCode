//
// 515. Find Largest Value in Each Tree Row.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/17/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************
515. Find Largest Value in Each Tree Row
*****************************************************************************************************************************/

import Foundation

class TreeNode: CustomStringConvertible {
    var value: Int
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    
    init(value: Int) {
        self.value = value
    }
    
    var description: String {
        return String(self.value)
    }
}

class BinaryTree {
    func largestValues(_ root: TreeNode?) -> [Int] {
        guard let node = root else { return [] }
        var result: [Int] = []
        var queue:[TreeNode] = []
        
        queue.append(node)
        while !queue.isEmpty {
            var max = 0
            var count = queue.count - 1
           
            while count >= 0 {
                let node = queue.removeFirst()
                if node.value > max { max = node.value }
                if let leftChild = node.leftChild { queue.append(leftChild) }
                if let rightChild = node.rightChild { queue.append(rightChild) }
                count -= 1
            }
            
            result.append(max)
        }
        return result
    }
}
