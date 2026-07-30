class MyQueue {
    private var stack1: [Int] = []
    private var stack2: [Int] = []
    init() {
        stack1 = []
        stack2 = []
    }

    func push(_ x: Int) {
stack1.append(x)
    }

    func pop() -> Int {
        while stack1.count > 1 {
            stack2.append(stack1.removeLast())
        }
        let result = stack1.removeLast()
        while !stack2.isEmpty {
            stack1.append(stack2.removeLast())
        }
        return result
    }

    func peek() -> Int {
while stack1.count > 1 {
            stack2.append(stack1.removeLast())
        }
        let result = stack1.last!
        while !stack2.isEmpty {
            stack1.append(stack2.removeLast())
        }
        return result
    }

    func empty() -> Bool {
return stack1.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let param_2 = obj.pop()
 * let param_3 = obj.peek()
 * let param_4 = obj.empty()
 */
