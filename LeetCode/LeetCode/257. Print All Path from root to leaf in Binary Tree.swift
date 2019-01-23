//
// 257. Print All Path from root to leaf in Binary Tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/18/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************


 Given a binary tree, return all root-to-leaf paths.
 
 Note: A leaf is a node with no children.
 
 Example:
 
 Input:
 
 1
 /   \
 2     3
 \
 5
 
 Output: ["1->2->5", "1->3"]
 
 Explanation: All root-to-leaf paths are: 1->2->5, 1->3


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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var result: [String] = []
        var stack: [String] = []
        binaryTreePaths(node: root, stack: &stack, result: &result)
        return result
    }
    
    fileprivate func binaryTreePaths(node: TreeNode?, stack: inout [String], result: inout [String]) {
        guard node != nil else { return }
        stack.append(String(node!.val))
        if node?.left == nil, node?.right == nil { result.append(stack.joined(separator: "->")) }
        binaryTreePaths(node: node?.left, stack: &stack, result: &result)
        binaryTreePaths(node: node?.right, stack: &stack, result: &result)
        stack.removeLast()
    }
}
