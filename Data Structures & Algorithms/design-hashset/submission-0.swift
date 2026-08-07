class MyHashSet {
    private var data: [Int] = []
    init() {
    data = []
    }

    func add(_ key: Int) {
        if !data.contains(key) {
            data.append(key)
        }
    }

    func remove(_ key: Int) {
        if let index = data.firstIndex(of: key) {
            data.remove(at: index)
        }
    }

    func contains(_ key: Int) -> Bool {
        return data.contains(key)
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
