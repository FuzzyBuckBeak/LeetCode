//
// 129. Sum Root to Leaf Numbers.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/25/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************

 Given a binary tree containing digits from 0-9 only, each root-to-leaf path could represent a number.
 
 An example is the root-to-leaf path 1->2->3 which represents the number 123.
 
 Find the total sum of all root-to-leaf numbers.
 
 Note: A leaf is a node with no children.
 
 Example:
 
 Input: [1,2,3]
    1
   / \
  2   3
 Output: 25
 Explanation:
 The root-to-leaf path 1->2 represents the number 12.
 The root-to-leaf path 1->3 represents the number 13.
 Therefore, sum = 12 + 13 = 25.



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
    func sumNumbers(_ root: TreeNode?) -> Int {
        var result: [Int] = []
        var stack: [String] = []
        pathsFromRootToLeaf(root: root, result: &result, stack: &stack)
        return result.reduce(0, +)
    }
    
    func pathsFromRootToLeaf(root: TreeNode?, result: inout [Int], stack: inout [String]) {
        if root == nil { return }
        stack.append(String(root!.val))
        
        if root?.left == nil && root?.right == nil {
            guard let value = Int(stack.joined()) else { fatalError("Something went wrong. Check \(#line) function \(#function)") }
            result.append(value)
        }
        
        pathsFromRootToLeaf(root: root?.left, result: &result, stack: &stack)
        pathsFromRootToLeaf(root: root?.right, result: &result, stack: &stack)
        
        stack.removeLast()
    }

}
