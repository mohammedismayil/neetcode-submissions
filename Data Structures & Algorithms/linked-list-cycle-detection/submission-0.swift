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
    func hasCycle(_ head: ListNode?) -> Bool {
        var list = Set<ObjectIdentifier>()

        var current = head 
        while current != nil {
            let nodeId = ObjectIdentifier(current!)
            if list.contains(nodeId) {
                return true
            }
            list.insert(nodeId)
            current = current?.next
        }
        return false
    }
}
