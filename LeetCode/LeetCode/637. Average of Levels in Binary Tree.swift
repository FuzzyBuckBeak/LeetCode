//
// 637. Average of Levels in Binary Tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/22/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************

 Given a non-empty binary tree, return the average value of the nodes on each level in the form of an array.
 Example 1:
 
 Input:
 3
 / \
 9  20
 /  \
 15   7
 Output: [3, 14.5, 11]
 Explanation:
 The average value of nodes on level 0 is 3,  on level 1 is 14.5, and on level 2 is 11. Hence return [3, 14.5, 11].



*****************************************************************************************************************************/

import Foundation

class TreeNode: CustomStringConvertible {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(val: Int) {
        self.val = val
    }
    
    var description: String {
        return String(self.val)
    }
}



class BinaryTree {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard root != nil else { return [] }
        var result: [Double] = []
        var queue:[TreeNode?] = []
        queue.append(root)
        
        while !queue.isEmpty {
            let numberOfNodes = queue.count
            var count = numberOfNodes
            var sum = 0
            while count > 0 {
                if let node = queue.removeFirst() {
                    sum += node.val
                    if let left = node.left { queue.append(left) }
                    if let right = node.right { queue.append(right) }
                    count -= 1
                }
            }
            
            result.append(Double(sum) / Double(numberOfNodes))
        }
        return result
    }
}
