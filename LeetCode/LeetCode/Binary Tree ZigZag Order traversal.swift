//
// 103. Binary Tree ZigZag Order traversal.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/21/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************

 Given a binary tree, return the zigzag level order traversal of its nodes' values. (ie, from left to right, then right to left for the next level and alternate between).
 
 For example:
 Given binary tree [3,9,20,null,null,15,7],
 3
 / \
 9  20
 /  \
 15   7
 return its zigzag level order traversal as:
 [
 [3],
 [20,9],
 [15,7]
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
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else { return []}
        var result: [[Int]] = []

        var LeftToRightStack: [TreeNode?] = []
        var rightToLeftStack: [TreeNode?] = []

        LeftToRightStack.append(root)
        while !LeftToRightStack.isEmpty || !rightToLeftStack.isEmpty {
            var tempLeftToRight: [Int] = []
            while !LeftToRightStack.isEmpty {
                if let node = LeftToRightStack.removeLast()  {
                    tempLeftToRight.append(node.val)
                    if let right = node.right { rightToLeftStack.append(right)}
                    if let left = node.left { rightToLeftStack.append(left) }
                }
            }
            
            var tempRightToLeft: [Int] = []
            while !rightToLeftStack.isEmpty {
                if let node = rightToLeftStack.removeLast()  {
                    tempRightToLeft.append(node.val)
                    if let left = node.left { LeftToRightStack.append(left)}
                    if let right = node.right { LeftToRightStack.append(right)}
                }
            }

            !tempLeftToRight.isEmpty ? result.append(tempLeftToRight): nil
            !tempRightToLeft.isEmpty ? result.append(tempRightToLeft): nil
        }

        return result
    }
}
