//
// Inorder Successor of a node in Binary Tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/27/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************
Inorder Successor of a node in Binary tree
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
    func inorderSuccessor(node: TreeNode?, root: TreeNode?) -> Int? {
        if root == nil,
           node == nil { return nil }
        
        var node = node
        
        if node!.right != nil {
            return findLeafLeftInRight(node: node)?.val
        } else {
            var parent = node?.parent
            while (node != nil && parent?.right === node) {
                node = parent
                parent = parent?.parent
            }
            
            return parent?.val
            
        }
    }
    
    func inorderSuccessorWithoutParentPointer(node: TreeNode?, root: TreeNode?) -> Int?  {
        if root == nil,
            node == nil { return nil }
        
        if node!.right != nil {
            return findLeafLeftInRight(node: node?.right)?.val
        } else {
            return findParent(of: node, root: root)?.val
        }
    }
    
    private func findLeafLeftInRight(node: TreeNode?) -> TreeNode? {
        var node = node
        while node?.left != nil {
            node = node?.left
        }
        
        return node
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
            if (root?.left === leftNode ) { result = root }
            return root
        }
        return nil
    }
}

