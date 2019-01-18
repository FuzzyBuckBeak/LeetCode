//
// 92. Reverse Linked List II.swift
// DataStructures - Linked List
//
// Created by: FuzzyBuckBeak on 1/10/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.
/*****************************************************************************************************************************

 Reverse a linked list from position m to n. Do it in one-pass.
 
 Note: 1 ≤ m ≤ n ≤ length of list.
 
 Example:
 
 Input: 1->2->3->4->5->NULL, m = 2, n = 4
 Output: 1->4->3->2->5->NULL
*****************************************************************************************************************************/

import Foundation

//Node Class
class ListNode: CustomStringConvertible {
    var description: String {
        return String(self.val)
    }
    
    var val: Int
    var next: ListNode?
    
    init(_ val: Int, next: ListNode?) {
        self.val = val
        self.next = next
    }
}

//Linked List Class
class LinkedList {
    
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        var currentPointer = head
        var prevStartingPointer: ListNode? = nil
        var m = m
        var n = n
        while (m > 1) {
            prevStartingPointer = currentPointer
            currentPointer = currentPointer?.next
            m -= 1
             n -= 1
        }
        
        var startingPointer = currentPointer
        while n > 1 {
            currentPointer = currentPointer?.next
            n -= 1
        }
        
        var prevPointer = currentPointer?.next
        let endPointer = currentPointer?.next
        
        while(startingPointer !== endPointer) {
            let nextPointer = startingPointer?.next
            startingPointer?.next = prevPointer
            prevPointer = startingPointer
            startingPointer = nextPointer
        }
        
        if prevStartingPointer == nil { return currentPointer }
        prevStartingPointer?.next = prevPointer
        return head
    }
}
