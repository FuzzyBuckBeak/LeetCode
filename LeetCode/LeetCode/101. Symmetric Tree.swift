//
// 101. Symmetric Tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/22/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************


 101. Symmetric Tree
 Easy
 
 1786
 
 37
 
 Favorite
 
 Share
 Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).
 
 For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
 
 1
 / \
 2   2
 / \ / \
 3  4 4  3
 But the following [1,2,2,null,3,null,3] is not:
 
 1
 / \
 2   2
 \   \
 3    3


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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isSymmetrics(node1: root, node2: root)
    }
    
    private func isSymmetrics(node1: TreeNode?, node2: TreeNode?) -> Bool {
        if node1 == nil && node2 == nil { return true }
        if node1 == nil || node2 == nil { return false }
        
        if node1?.val != node2?.val { return false}
        return isSymmetrics(node1: node1?.left, node2: node2?.right) &&
            isSymmetrics(node1: node1?.right, node2: node2?.left)
    }

}
