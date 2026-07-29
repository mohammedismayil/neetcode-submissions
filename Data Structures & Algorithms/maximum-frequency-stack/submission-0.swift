class FreqStack {
    private var count: [Int: Int]
    private var stack: [Int]

    init() {
        count = [:]
        stack = []
    }

    func push(_ val: Int) {
        stack.append(val)
        count[val,default: 0] += 1
    }

    func pop() -> Int {
        let max = count.values.max() ?? 0
        for i in stride(from: stack.count - 1, through: 0, by: -1) {
            let val = stack[i]
            if count[val] == max {
                count[val]! -= 1 
                stack.remove(at: i)
                return val
            }
        }
        return -1
    }
}

/**
 * Your FreqStack object will be instantiated and called as such:
 * let obj = FreqStack()
 * obj.push(val)
 * let param_2 = obj.pop()
 */
