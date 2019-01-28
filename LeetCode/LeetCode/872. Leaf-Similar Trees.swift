//
// 872. Leaf-Similar Trees.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/24/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************

 Consider all the leaves of a binary tree.  From left to right order, the values of those leaves form a leaf value sequence.
 
 For example, in the given tree above, the leaf value sequence is (6, 7, 4, 9, 8).
 
 Two binary trees are considered leaf-similar if their leaf value sequence is the same.
 
 Return true if and only if the two given trees with head nodes root1 and root2 are leaf-similar.

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

    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var result: [Int] = []
        var result2: [Int] = []
        inorderTraverse(root: root1, result: &result)
        inorderTraverse(root: root1, result: &result2)
        
        return result == result2 ? true : false
    }
    
    private func inorderTraverse(root: TreeNode?, result: inout [Int]) {
        if root == nil { return }
        if root?.left == nil && root?.right == nil { result.append(root!.val)}
        inorderTraverse(root: root?.left, result: &result)
        inorderTraverse(root: root?.right, result: &result)
    }
}
