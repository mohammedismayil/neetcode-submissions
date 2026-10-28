/*
// Definition for a Node.
class Node {
    var val: Int
    var next: Node?
    var random: Node?
    init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }
}
*/

class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        var oldCopy: [Node?: Node?]  = [nil:nil]

        var current = head

        while current != nil {
            let copy = Node(current!.val)
            oldCopy[current] = copy
            current = current?.next
        }
        current = head
        while current != nil {
            let old = oldCopy[current]!
            old?.next = oldCopy[current?.next]!
            old?.random = oldCopy[current?.random]!
            current = current?.next
        }
        return oldCopy[head]!
    }
}
