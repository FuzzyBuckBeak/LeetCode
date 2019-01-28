//
// Preorder successor of a node in a tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/27/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************

Preorder Successor of a node in a tree given parent pointer

*****************************************************************************************************************************/

import Foundation

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
    func preorderSuccessor(node: TreeNode?, root: TreeNode?) -> Int? {
        if root == nil,
            node == nil { return nil }
        
        if node?.left != nil {
            return node?.left?.val
        } else {
            var currentNode = node
            var parent = node?.parent
            
            while parent?.right === currentNode {
                currentNode = parent
                parent = parent?.parent
            }
            
            return parent?.right?.val
        }
    }
    
    func preorderSuccessorWithParentPointer(node: TreeNode?, root: TreeNode?) -> Int? {
        if root == nil,
            node == nil { return nil }
        
        if node?.left != nil {
            return node?.left?.val
        } else {
             let node = findParent(of: node, root: root)
             return node?.right?.val
        }
    }
    
    private func findParent(of node: TreeNode?, root: TreeNode?) -> TreeNode? {
        var result: TreeNode?
        returnParent(node: node, result: &result, root: root)
        return result
    }
    
    @discardableResult
    private func returnParent(node: TreeNode?, result: inout TreeNode?, root: TreeNode?) -> TreeNode? {
        if root == nil { return nil }
        if root === node { return root }
        
        let leftNode = returnParent(node: node, result: &result, root: root?.left)
        let rightNode = returnParent(node: node, result: &result, root: root?.right)
        
        if leftNode != nil || rightNode != nil {
            if (root?.left === leftNode ) { result = root; return nil }
            return root
        }
        return nil
    }
}
