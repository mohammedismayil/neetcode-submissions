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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {

        var list: [ListNode] = []
        var current = head

        while current != nil {
            list.append(current!)
            current = current?.next
        }
        let removeIndex = list.count - n
        if removeIndex == 0 {
            return head?.next
        }
        list[removeIndex-1].next = list[removeIndex].next
        return head

    }
}
