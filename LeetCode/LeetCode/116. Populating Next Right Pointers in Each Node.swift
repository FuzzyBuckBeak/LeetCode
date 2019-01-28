//
// 116. Populating Next Right Pointers in Each Node.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/25/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************
 Given the following perfect binary tree,
 
    1
   /  \
  2    3
 / \  / \
4  5  6  7
 After calling your function, the tree should look like:
 
    1 -> NULL
   /  \
  2 -> 3 -> NULL
 / \  / \
4->5->6->7 -> NULL


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
    func connect(root: TreeNode?) {
        guard root != nil else { return }
        var queue: [TreeNode?] = []
        
        queue.append(root)
        while !queue.isEmpty {
            var count = queue.count - 1
            while count >= 0 {
                if let node = queue.removeFirst() {
                    if let leftChild = node.left { queue.append(leftChild) }
                    if let rightChild = node.right { queue.append(rightChild) }
                    node.next = count == 0 ? nil : queue[0]
                    count -= 1
                }
            }
        }
    }
}
