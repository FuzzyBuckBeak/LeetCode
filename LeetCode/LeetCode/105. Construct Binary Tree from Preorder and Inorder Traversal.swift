//
// 105. Construct Binary Tree from Preorder and Inorder Traversal.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/26/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************

Given preorder and inorder traversal of a tree, construct the binary tree.

Note:
You may assume that duplicates do not exist in the tree.

For example, given

preorder = [3,9,20,15,7]
inorder = [9,3,15,20,7]
Return the following binary tree:

    3
   / \
  9  20
    /  \
   15   7



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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard inorder.count > 0,
            inorder.count == preorder.count else {
                return nil
        }
        
        return buildTree(preorder: preorder, inorder: inorder, preStart: 0, preEnd: preorder.count - 1, iStart: 0, iEnd: inorder.count - 1)
        
    }
    
    private func buildTree(preorder: [Int], inorder: [Int], preStart: Int, preEnd: Int, iStart: Int, iEnd: Int) -> TreeNode? {
        if iStart > iEnd { return nil }
        
        let mid = searchInInorder(inorder: inorder, value: preorder[preStart], iStart: iStart, iEnd: iEnd)
        
        let root = TreeNode(val: preorder[preStart])
        root.left = buildTree(preorder: preorder, inorder: inorder, preStart: preStart + 1, preEnd: preStart + mid, iStart: iStart, iEnd: mid - 1)
        root.right = buildTree(preorder: preorder, inorder: inorder, preStart: preStart + mid + 1 - iStart, preEnd: preEnd, iStart: mid + 1, iEnd: iEnd)
        
        return root
    }
    
    
    private func searchInInorder(inorder: [Int], value: Int, iStart: Int, iEnd: Int) -> Int {
        var mid = 0
        for i in iStart...iEnd {
            if inorder[i] ==  value {
                mid = i
                break
            }
        }
        return mid
    }
}
