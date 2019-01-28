//
// 606. Construct String from Binary Tree.swift
// DataStructures
//
// Created by: FuzzyBuckBeak on 1/23/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************
 Input: Binary tree: [1,2,3,4]
      1
    /   \
   2     3
  /
 4
 
 Output: "1(2(4))(3)"
 
 Explanation: Originallay it needs to be "1(2(4)())(3()())",
 but you need to omit all the unnecessary empty parenthesis pairs.
 And it will be "1(2(4))(3)".
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

    func tree2str(_ t: TreeNode?) -> String {
        var result: String = ""
        preorder(node: t, result: &result)
        return result
    }
    
    private func preorder(node: TreeNode?, result: inout String) {
        if node == nil { return }
        result = result.appending(String(node!.val))
        
        if node?.left != nil || node?.right != nil {
            result = result.appending("(")
            preorder(node: node?.left, result: &result)
            result = result.appending(")")
        }
        
        if node?.right != nil {
            result = result.appending("(")
            preorder(node: node?.right, result: &result)
            result = result.appending(")")
        }
    }
}
