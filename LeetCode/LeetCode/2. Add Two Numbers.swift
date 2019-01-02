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

class AddTwoNumbersRecursion {
    func addTwoNumbersRecursion(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
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

class AddTwoNumbers {
    func addTwoNumbersRecursion(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
       
        var carry = 0
        var head: ListNode? = nil
        var node: ListNode? = nil
        var list1 = l1
        var list2 = l2
        
        while list1 != nil || list2 != nil {
            let l1Val = list1?.val ?? 0
            let l2Val = list2?.val ?? 0
            
            let sum = l1Val + l2Val + carry
            let resultVal = sum % 10
            carry = sum / 10
            
            let val = ListNode(resultVal)
            node?.next = val
            node = val
            head = head ?? node
            
            list1 = list1?.next
            list2 = list2?.next
        }
        
        if (carry > 0) {
            node?.next = ListNode(carry)
        }
        
        return head
        
        
        
//        var list1 = l1
//        var list2 = l2
//        var result: ListNode? = nil
//        var node: ListNode? = nil
//        var carry: Int = 0
//        while list1 != nil || list2 != nil {
//            let digitSum = (list1?.val ?? 0) + (list2?.val ?? 0) + carry
//            carry = digitSum / 10
//            let newNode = ListNode(digitSum % 10)
//            node?.next = newNode
//            node = newNode
//            result = result ?? node
//            list1 = list1?.next
//            list2 = list2?.next
//        }
//        if carry > 0 {
//            node?.next = ListNode(carry)
//        }
//        return result
    }
}
