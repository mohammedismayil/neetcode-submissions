class TimeMap {

    var map: [String: [(Int, String)]]

    init() {
        self.map = [:]
    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        if map[key] == nil {
            map[key] = []
        }
        map[key]!.append((timestamp,value))
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        if let values = map[key] {
            var l = 0
            var r = values.count - 1
            var res = ""
            while l <= r {
                let mid = (l+r)/2
                let num = values[mid]
                if num.0 <= timestamp {
                    res = num.1
                     l = mid + 1
                } else {
                    r = mid - 1
                }
            }
            return res
        } else {
            return ""
        }
    }
}
