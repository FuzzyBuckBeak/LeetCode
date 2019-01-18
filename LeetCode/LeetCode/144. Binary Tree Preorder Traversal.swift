//
// 144. Binary Tree Preorder Traversal.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/17/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************
144. Binary Tree Preorder Traversal.swift
*****************************************************************************************************************************/

import Foundation

class TreeNode: CustomStringConvertible {
    var value: Int
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    
    init(value: Int) {
        self.value = value
    }
    
    var description: String {
        return String(self.value)
    }
}

class BinaryTree {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        internalPreOrder(root: root, result: &result)
        return result
    }
    
    func internalPreOrder(root: TreeNode?, result: inout [Int]) {
        if root == nil { return }
        result.append(root!.value)
        internalPreOrder(root: root?.leftChild, result: &result)
        internalPreOrder(root: root?.rightChild, result: &result)
    }
}
