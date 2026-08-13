/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
let dummy: ListNode?  = ListNode(0)
var current = dummy
var p1 = list1
var p2 = list2 
while let node1 = p1, let node2 = p2 {
    if node1.val <= node2.val {
        current?.next = node1
        p1 = p1?.next
    } else {
        current?.next = node2
        p2 = p2?.next
    }
    current = current?.next
}
current?.next = p1 ?? p2
return dummy?.next
    }
}
