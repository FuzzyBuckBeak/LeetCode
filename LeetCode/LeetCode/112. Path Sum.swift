//
// 112. Path Sum.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/22/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************

 Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.
 
 Note: A leaf is a node with no children.
 
 Example:
 
 Given the below binary tree and sum = 22,
 
 5
 / \
 4   8
 /   / \
 11  13  4
 /  \      \
 7    2      1
 return true, as there exist a root-to-leaf path 5->4->11->2 which sum is 22.

*****************************************************************************************************************************/

import Foundation

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
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        if root == nil { return false }
        return isSum(root: root, sum)
    }

    private func isSum(root: TreeNode?, _ sum: Int) -> Bool {
        guard root != nil else { return false }
        if root?.left == nil && root?.right == nil { return root!.val == sum }
        let value = sum - root!.val
        return isSum(root: root?.left, value) || isSum(root: root?.right, value)
    }
}
