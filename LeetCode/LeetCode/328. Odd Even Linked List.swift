//
// 328. Odd Even Linked List.swift
// Problems
//
// Created by: FuzzyBuckBeak on 12/30/18
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************
 Given a singly linked list, group all odd nodes together followed by the even nodes. Please note here we are talking about the node number and not the value in the nodes.
 
 You should try to do it in place. The program should run in O(1) space complexity and O(nodes) time complexity.
 
 Example 1:
 
 Input: 1->2->3->4->5->NULL
 Output: 1->3->5->2->4->NULL

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

    func oddEvenList(_ head: ListNode?) -> ListNode? {
        let evenList: ListNode? = ListNode(value: 0, next: nil)
        let oddList: ListNode? = ListNode(value: 0, next: nil)
        var oddPointer: ListNode? = oddList
        var evenPointer: ListNode? = evenList
        
        var currentPointer = head
        while (currentPointer != nil) {
            let nextPointer = currentPointer?.next?.next
            
            currentPointer?.next?.next = nil
            let evenNode = currentPointer?.next

            currentPointer?.next = nil
            let oddNode = currentPointer
            
        
            evenPointer?.next = evenNode
            evenPointer = evenNode
            oddPointer?.next = oddNode
            oddPointer = oddNode
            
            currentPointer = nextPointer
        }
        
        oddPointer?.next = evenList?.next
        
        return oddList?.next
    }
}
