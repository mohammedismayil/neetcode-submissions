class MyHashMap {
    private var dict: [Int] = []
    init() {
        dict = Array(repeating: -1, count: 1000001)
    }

    func put(_ key: Int, _ value: Int) {
        dict[key] = value
    }

    func get(_ key: Int) -> Int {
        return dict[key]
    }

    func remove(_ key: Int) {
        dict[key] = -1
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
