//
// Print the right view of binary tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/17/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************
Print the left view of Binary tree.swift
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
    func printRightViewOfBinaryTree(node: TreeNode?) -> [Int] {
        guard let node = node else { return [] }
        var queue: [TreeNode] = []
        queue.append(node)
        var result: [Int] = []
        
        while !queue.isEmpty {
            
            var count = queue.count - 1
            
            while count >= 0 {
                let node = queue.removeFirst()
                if count == 0 { result.append(node.value) }
                if let leftChild = node.leftChild { queue.append(leftChild) }
                if let rightChild = node.rightChild  { queue.append(rightChild) }
                count -= 1
            }
        }
        
        return result
    }
}
