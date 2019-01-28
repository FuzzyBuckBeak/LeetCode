//
// Inorder predecessor of a node in Binary Tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/27/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************
 Inorder predecessor of a node in Binary tree
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
    func inorderPredecessor(node: TreeNode?, root: TreeNode?) -> Int? {
        if root == nil,
            node == nil { return nil }

        var node = node

        if node!.left != nil {
            return findLeafRightInLeft(node: node)?.val
        } else {
            var parent = node?.parent
            while (node != nil && parent?.left === node) {
                node = parent
                parent = parent?.parent
            }

            return parent?.val

        }
    }

    func inorderPredecessorWithoutParentPointer(node: TreeNode?, root: TreeNode?) -> Int?  {
        if root == nil,
            node == nil { return nil }

        if node!.right != nil {
            return findLeafRightInLeft(node: node?.left)?.val
        } else {
            return findParent(of: node, root: root)?.val
        }
    }

    private func findLeafRightInLeft(node: TreeNode?) -> TreeNode? {
        var node = node
        while node?.right != nil {
            node = node?.right
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
            if (root?.right === rightNode ) { result = root; return nil }
            return root
        }
        return nil
    }
}


