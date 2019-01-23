//
// 513. Find Bottom Left Tree Value.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/21/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************
 Given a binary tree, find the leftmost value in the last row of the tree.
 
 Example 1:
 Input:
 
     2
    / \
   1   3
 
 Output:
 1

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
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        guard root != nil else { return 0 }
        var leftMostValue: Int = 0
        
        var queue: [TreeNode?] = []
        queue.append(root)
        
        while !queue.isEmpty {
            var count = queue.count - 1
            while count >= 0 {
                if let node = queue.removeFirst() {
                    count -= 1
                    if let right = node.right { queue.append(right)}
                    if let left = node.left { queue.append(left)}
                    leftMostValue = node.val
                }
            }
        }
        
        return leftMostValue
    }
}
