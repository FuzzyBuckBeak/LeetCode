//
// 107. Binary Tree Level Order Traversal II.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/21/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************

 Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).
 
 For example:
 Given binary tree [3,9,20,null,null,15,7],
     3
    / \
   9  20
  /  \
 15   7
 return its bottom-up level order traversal as:
 [
 [15,7],
 [9,20],
 [3]
 ]
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
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else { return [] }
        var result: [[Int]] = []
        var queue: [TreeNode?] = []
        
        queue.append(root)
        while !queue.isEmpty {
            
            var count = queue.count - 1
            var temp : [Int] = []
            while count >= 0 {
                if let node = queue.removeFirst() {
                    temp.append(node.val)
                    if let left = node.left { queue.append(left) }
                    if let right = node.right { queue.append(right) }
                    count -= 1
                }
            }
            !temp.isEmpty ? result.insert(temp, at: 0) : nil
        }
        return result
    }
}
