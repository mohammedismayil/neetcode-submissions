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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        func add(l1: ListNode?,l2: ListNode?, carry: Int) -> ListNode? {
            if l1 == nil && l2 == nil && carry == 0 {
                return nil
            }
            let val1 = l1?.val ?? 0
            let val2 = l2?.val ?? 0
            let sum = val1+val2+carry
            let newCarry = sum / 10
            let total = sum % 10
            let next = add(l1:l1?.next,l2:l2?.next,carry:newCarry)
             let node = ListNode(total)
            node.next = next

            return node
        } 
        return add(l1: l1,l2: l2,carry:0)
    }
}
