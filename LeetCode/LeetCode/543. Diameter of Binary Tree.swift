//
// 543. Diameter of Binary Tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/26/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************

Given a binary tree, you need to compute the length of the diameter of the tree.
The diameter of a binary tree is the length of the longest path between any two nodes in a tree.
This path may or may not pass through the root.

Example:
Given a binary tree

          1
         / \
        2   3
       / \
      4   5
Return 3, which is the length of the path [4,2,1,3] or [5,2,1,3].
*****************************************************************************************************************************/

import Foundation

class TreeNode: CustomStringConvertible {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    var next: TreeNode?
    
    init(val: Int) {
        self.val = val
    }
    
    var description: String {
        return String(self.val)
    }
}



class BinaryTree {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        let lheight = height(root: root?.left)
        let rheight = height(root: root?.right)
        
        let ldaimeter = diameterOfBinaryTree(root?.left)
        let rdiameter = diameterOfBinaryTree(root?.right)
        
        return max( lheight + rheight + 1, max(ldaimeter, rdiameter))
    }
    
    private func height(root: TreeNode?) -> Int {
        if root == nil { return 0 }
        return 1 + max(height(root: root?.left), height(root: root?.right))
    }
}
