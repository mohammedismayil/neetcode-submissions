class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        let sArray = Array(s)
        let tArray = Array(t)
        var targetDict: [Character: Int] = [:]
        for value in 0..<tArray.count {
            targetDict[tArray[value], default: 0] += 1
        }
        var left = 0
        var resultLength = Int.max
        var window: [Character: Int] = [:]
        let need = targetDict.count
        var indices = [0,0]
        var have = 0
        for right in 0..<sArray.count {
            
            window[sArray[right], default: 0] += 1

            if let count =  targetDict[sArray[right]], count == window[sArray[right]] {
                have += 1
            }

            while need == have {
                if right - left + 1 < resultLength {
                    resultLength = right - left + 1
                    indices = [left, right]
                }
                window[sArray[left], default: 0] -= 1
                if let count = targetDict[sArray[left]], count > window[sArray[left], default: 0] {
                    have -= 1
                }
                left += 1
            }
        }
        return resultLength != Int.max ? String(sArray[indices[0]...indices[1]]) : ""
    }
}
