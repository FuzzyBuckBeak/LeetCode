//
// 236. Lowest Common Ancestor of a Binary Tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/22/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************

 Given a binary tree, find the lowest common ancestor (LCA) of two given nodes in the tree.
 
 According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as
 the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”
 
 Input: root = [3,5,1,6,2,0,8,null,null,7,4], p = 5, q = 1
 Output: 3
 Explanation: The LCA of nodes 5 and 1 is 3.
 
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
    func lowestCommonAncestor(root: TreeNode?, p: TreeNode, q:TreeNode) -> TreeNode? {
        if root == nil { return root }
        if root === p || root === q { return root }
        let left = lowestCommonAncestor(root: root?.left, p: p, q: q)
        let right = lowestCommonAncestor(root: root?.right, p: p, q: q)
        if left != nil && right != nil { return root }
        else { return left != nil ?  left :  right }
    }
}
