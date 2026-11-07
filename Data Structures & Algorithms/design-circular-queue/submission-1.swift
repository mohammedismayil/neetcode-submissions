class MyCircularQueue {
    private var q: [Int]
    private var k: Int

    init(_ k: Int) {
        self.q = []
        self.k = k
    }

    func enQueue(_ value: Int) -> Bool {
        if q.count == k {
            return false
        }
        q.append(value)
        return true
    }

    func deQueue() -> Bool {
        if q.isEmpty {
            return false
        }
        q.removeFirst()
        return true
    }

    func Front() -> Int {
        return q.isEmpty ? -1 : q[0]
    }

    func Rear() -> Int {
        return q.isEmpty ? -1 : q[q.count - 1]
    }

    func isEmpty() -> Bool {
        return q.isEmpty
    }

    func isFull() -> Bool {
        return q.count == k
    }
}