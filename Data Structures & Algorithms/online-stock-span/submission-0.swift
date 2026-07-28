class StockSpanner {
    private var stack: [(price:Int, span:Int)]
    init() {
        stack = []
    }

    func next(_ price: Int) -> Int {
        var span = 1
        while !stack.isEmpty && stack.last!.price <= price {
            span = stack.removeLast().span + span
        }
        stack.append((price,span))
        return span
    }
}

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let param_1 = obj.next(price)
 */
