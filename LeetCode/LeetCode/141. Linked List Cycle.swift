//
// 141. Linked List Cycle.swift
// Problems
//
// Created by: FuzzyBuckBeak on 12/28/18
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.

/*****************************************************************************************************************************
 Given a linked list, determine if it has a cycle in it.
 
 To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed) in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.
 
 
 
 Example 1:
 
 Input: head = [3,2,0,-4], pos = 1
 Output: true
 Explanation: There is a cycle in the linked list, where tail connects to the second node.
*****************************************************************************************************************************/

import Foundation

//Node Class
class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

//Linked List Class
class LinkedList {
    
    func hasCycle(head: Node) -> Bool {        
        var slowPointer: Node? = head
        var fastPointer: Node? = head
        
        while(fastPointer != nil) {
            slowPointer = slowPointer?.next
            fastPointer = fastPointer?.next?.next
            
            if slowPointer === fastPointer {
                return true
            }
        }
        
        return false
    }
}
