//
// 113. Path Sum II.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/22/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************





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
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        var stack: [Int] = []
        var result: [[Int]] = []
        printPath(root: root, sum: sum, result: &result, stack: &stack)
        return result
    }
    
    private func printPath(root: TreeNode?, sum: Int, result: inout [[Int]], stack: inout [Int]) {
        if root == nil { return }
        stack.append(root!.val)
        let value = sum - root!.val
        if root?.left == nil && root?.right == nil && root?.val == sum { result.append(stack) }
        printPath(root: root?.left, sum: value, result: &result, stack: &stack)
        printPath(root: root?.right, sum: value, result: &result, stack: &stack)
        stack.removeLast()
    }
}
