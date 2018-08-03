//
//  2. Add Two Numbers.swift
//	LeetCode
//
//	Created by FuzzyBuckBeak on 8/3/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*************************************************************************************************************************************************************
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.


*************************************************************************************************************************************************************/

import Foundation

public class ListNode {
   public var val: Int
   public var next: ListNode?
   public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode(0)
        addElements(carry: 0, l1, l2, result)
        return result
    }
    
    func addElements(carry: Int, _ l1: ListNode?, _ l2: ListNode?, _ result: ListNode) {
        let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
        result.val = sum % 10
        let nextCarry = sum/10
        
        if l1?.next != nil || l2?.next != nil || nextCarry > 0 {
            result.next = ListNode(0)
            addElements(carry: nextCarry, l1?.next, l2?.next, result.next!)
        }
    }
}
