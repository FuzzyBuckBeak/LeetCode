//
// Implement inorder traversal without recursion.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/26/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************
IMPLEMENT A INORDER TRAVERSAL WITHOUT RECURSION
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
    func inOrderTraversal(node: TreeNode?) -> String {
        var stack: [TreeNode?] = []
        var currentNode: TreeNode? = node
        var result: [String] = []
        
        while !stack.isEmpty  || currentNode != nil {
            if currentNode != nil {
                stack.append(currentNode)
                currentNode = currentNode?.left
            } else {
                if let node = stack.removeLast() {
                    currentNode = node
                    result.append(String(node.val))
                    currentNode = currentNode?.right
                }
            }
        }
        
        return result.joined(separator: "->")
    }
}
