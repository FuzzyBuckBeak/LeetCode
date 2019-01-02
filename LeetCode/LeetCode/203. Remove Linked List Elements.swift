//
// 203. Remove Linked List Elements.swift
// Problems
//
// Created by: FuzzyBuckBeak on 12/30/18
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************
 203. Remove Linked List Elements
 Remove all elements from a linked list of integers that have value val.
 
 Example:
 
 Input:  1->2->6->3->4->5->6, val = 6
 Output: 1->2->3->4->5
*****************************************************************************************************************************/

import Foundation

class ListNode {
    var value: Int
    var next: ListNode?
    
    init(value: Int, next: ListNode?) {
        self.value = value
        self.next = next
    }
}


class LinkedList {

    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var dumyHead: ListNode? = head
        var previousPointer: ListNode? = nil
       
        var currentPointer: ListNode? = head
        while currentPointer != nil {
            if currentPointer?.value == val {
                if currentPointer === dumyHead {
                    dumyHead = currentPointer?.next
                } else {
                    previousPointer?.next = currentPointer?.next
                }
            } else {
                previousPointer = currentPointer
            }
            
            currentPointer = currentPointer?.next
        }
        
        return dumyHead
    }
}
