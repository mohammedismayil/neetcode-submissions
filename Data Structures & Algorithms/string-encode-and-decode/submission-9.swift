class Solution {

    func encode(_ strs: [String]) -> String {
        var result = ""
        for str in strs {
            let count = str.count
            result += "\(count)#\(str)"
        }
        return result
    }

    func decode(_ str: String) -> [String] {
        var i = 0
        var result: [String] = []
        var chars = Array(str)
        while i < chars.count {
            var j = i
            while chars[j] != "#" {
                j += 1
            }
            var lengthString = String(chars[i..<j])
            var length = Int(lengthString)!
            var current = j + 1 + length
            var currentString = String(chars[j+1..<current])
            result.append(currentString)
            i = current
        }
        return result
    }
}
