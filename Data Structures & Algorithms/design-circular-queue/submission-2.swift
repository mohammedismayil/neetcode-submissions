class MyCircularQueue {
    private var count: Int
    private var array: [Int]
    init(_ k: Int) {
        self.count = k
        self.array = []
    }

    func enQueue(_ value: Int) -> Bool {
        if array.count == count {
            return false
        }
        array.append(value)
        return true
    }

    func deQueue() -> Bool {
        if array.isEmpty {
            return false
        }
        array.removeFirst()
        return true
    }

    func Front() -> Int {
        return array.isEmpty ? -1 : array[0]
    }

    func Rear() -> Int {
        return array.isEmpty ? -1 : array[array.count-1]
    }

    func isEmpty() -> Bool {
        return array.isEmpty
    }

    func isFull() -> Bool {
        return array.count == count
    }
}

/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */
