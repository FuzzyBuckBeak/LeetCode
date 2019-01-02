//
// 86. Partition List.swift
// Problems
//
// Created by: FuzzyBuckBeak on 12/31/18
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************
 Given a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.
 
 You should preserve the original relative order of the nodes in each of the two partitions.
 
 Example:
 
 Input: head = 1->4->3->2->5->2, x = 3
 Output: 1->2->2->4->3->5
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
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        var leftHead: ListNode? = nil
        var rightHead: ListNode? = nil
        var leftTail: ListNode? = nil
        var rightTail: ListNode? = nil
        
        guard head != nil,
            head?.next != nil  else { return head }
        
        var currentPointer = head
        while currentPointer != nil {
            let nextPointer = currentPointer?.next
            
            let tempNode = currentPointer
            tempNode?.next = nil
            
            
            if let value = currentPointer?.value  {
                if value < x {
                    if leftHead == nil {
                        leftHead = tempNode
                        leftTail = tempNode
                    } else {
                        leftTail?.next = tempNode
                        leftTail = tempNode
                    }
                } else {
                    if rightHead == nil {
                        rightHead = tempNode
                        rightTail = tempNode
                    } else {
                        rightTail?.next = tempNode
                        rightTail = tempNode
                    }
                }
            }
            
            currentPointer = nextPointer
        }
        
        if (leftHead == nil) { return rightHead }
        leftTail?.next = rightHead
        return leftHead
    }
}
