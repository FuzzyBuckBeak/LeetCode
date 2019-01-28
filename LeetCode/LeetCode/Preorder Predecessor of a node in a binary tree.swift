//
// Preorder Predecessor of a node in a binary tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/27/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************

Preorder Predecessor of a node in a binary tree

*****************************************************************************************************************************/

import Foundation
class TreeNode: CustomStringConvertible {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    var parent: TreeNode?
    
    init(val: Int) {
        self.val = val
    }
    
    var description: String {
        return String(self.val)
    }
}



class BinaryTree {
    //Given a parent Pointer
    func preorderPreDecessor(node: TreeNode?, root: TreeNode?) -> Int? {
        if root == nil,
            node == nil { return nil }
        
        if node?.parent?.left === node {
            return node?.parent?.val
        } else {
            return findLeafRightInLeft(node: node?.parent?.left)?.val
        }
    }
    
    private func findLeafRightInLeft(node: TreeNode?) -> TreeNode? {
        var node = node
        while node?.right != nil {
            node = node?.right
        }
        
        return node
    }
}
