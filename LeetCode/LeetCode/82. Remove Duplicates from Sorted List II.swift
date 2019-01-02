//
// 82. Remove Duplicates from Sorted List II.swift
// Problems
//
// Created by: FuzzyBuckBeak on 12/29/18
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************
 Given a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list.
 
 Example 1:
 
 Input: 1->2->3->3->4->4->5
 Output: 1->2->5
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

//Linked List Class
class LinkedList {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var headInstance = head
        var currentPointer = head
        var previousPointer: ListNode? = nil
        
        while currentPointer != nil {
            if currentPointer?.value == currentPointer?.next?.value {
                let value = currentPointer?.value
                let refPointer = currentPointer
                while (currentPointer?.value == value) {
                    currentPointer = currentPointer?.next
                }
                if (refPointer === headInstance) {
                    headInstance = currentPointer
                } else {
                     previousPointer?.next = currentPointer
                }
            } else {
                previousPointer = currentPointer
                currentPointer = currentPointer?.next
            }
        }
        
        return headInstance
    }
}
