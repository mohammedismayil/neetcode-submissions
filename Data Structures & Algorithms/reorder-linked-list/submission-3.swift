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
    func reorderList(_ head: ListNode?) {
        if head == nil {
            return
        }
        var array: [ListNode] = []
        var dup = head

        while dup != nil {
            array.append(dup!)
            dup = dup?.next
        }
        var left = 0
        var right = array.count - 1

        while left < right {
            array[left].next = array[right]
            left += 1
            if left >= right {
                break
            }
            array[right].next = array[left]
            right -= 1
        }
        array[left].next = nil
    }
}
