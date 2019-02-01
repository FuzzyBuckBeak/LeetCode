//
// 958. Check Completeness of a Binary Tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/31/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************
 
 Construct Binary tree given inorder and postorder traversal

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

    func isCompleteTree(_ root: TreeNode?) -> Bool {
        if root == nil { return true }
    
        var isZeroChildHit: Bool = false
        var queue: [TreeNode?] = []
        queue.append(root)
        
        while !queue.isEmpty {
            let node = queue.removeFirst()
            if node == nil { isZeroChildHit = true }
            else {
                if isZeroChildHit { return false }
                queue.append(node?.left)
                queue.append(node?.right)
            }
        }
        
        return true
    }
}
