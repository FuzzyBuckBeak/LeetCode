/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var fastPointer: ListNode? = head
    var slowPointer: ListNode? = head
    
    for i in 0 ..< n {
        fastPointer = fastPointer?.next
    }
    if fastPointer == nil {
        return head?.next // Return the next node as the new head
    }
    
    while (fastPointer?.next != nil) {
        fastPointer = fastPointer?.next
        slowPointer = slowPointer?.next
    }

    slowPointer?.next = slowPointer?.next?.next
    
    return head
    }
}