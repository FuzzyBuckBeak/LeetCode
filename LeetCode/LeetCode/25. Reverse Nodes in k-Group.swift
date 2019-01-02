//
// 25. Reverse Nodes in k-Group
// Problems
//
// Created by: FuzzyBuckBeak on 12/29/18
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************
 Reverse Nodes in k-Group
 Given a linked list, reverse the nodes of a linked list k at a time and return its modified list.
 k is a positive integer and is less than or equal to the length of the linked list. If the number of nodes is not a multiple of k then left-out nodes in the end should remain as it is.
 
 Example:
 Given this linked list: 1->2->3->4->5
 For k = 2, you should return: 2->1->4->3->5
 For k = 3, you should return: 3->2->1->4->5
 
 Note: Only constant extra memory is allowed.
 You may not alter the values in the list's nodes, only nodes itself may be changed.
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
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        
        //If the number of nodes is not a multiple of k then left-out nodes in the end should remain as it is.
        var tail = head
        for _ in 0 ..< k {
            tail = tail?.next
            if tail == nil { return head }
        }
        
       // reverse the nodes of a linked list k at a time and return its modified list.
        var counter = 0
        var prevPointer: ListNode? = nil
        var currentPointer: ListNode? = head
        var nextPointer: ListNode? = nil
        
        while counter < k &&  currentPointer != nil {
            nextPointer = currentPointer?.next
            currentPointer?.next = prevPointer
            prevPointer = currentPointer
            currentPointer = nextPointer
            counter += 1
        }
        
        if (currentPointer != nil) {
            head?.next = reverseKGroup(currentPointer, k)
        }
        
        return prevPointer
    }
}
