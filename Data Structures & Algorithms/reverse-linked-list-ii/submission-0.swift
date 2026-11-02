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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
let dummy = ListNode(0)
dummy.next = head
var previous:ListNode? = dummy

for _ in 0..<(left-1) {
    previous = previous?.next
}
var current = previous?.next

for _ in 0..<(right-left) {
    let next = current?.next
    current?.next = next?.next
    next?.next = previous?.next
    previous?.next = next
}
return dummy.next
    }
}
