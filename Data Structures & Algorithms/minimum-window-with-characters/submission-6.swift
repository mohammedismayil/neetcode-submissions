class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
         var sArray = Array(s)
        var tArray = Array(t)
        var existDict: [Character: Int] = [:]
        var result = ""
        for value in 0..<tArray.count {
            existDict[tArray[value], default: 0] += 1
        }
        var left = 0
        var indices = [0,0]
        var window:[Character: Int] = [:]
        var have = 0
        var need = existDict.count
        var currentMin = Int.max
        for right in 0..<sArray.count {
            window[sArray[right], default: 0] += 1
            let count = window[sArray[right], default: 0]
            if count == existDict[sArray[right]] {
                have += 1
            }
            while have == need {
                if right-left+1 < currentMin {
currentMin = min(currentMin, right-left+1)
indices = [left, right]
                }
                if existDict[sArray[left]] == window[sArray[left], default: 0]{
                        have -= 1
                    }
                window[sArray[left], default: 0] -= 1
                if window[sArray[left], default: 0] == 0 {
                    window.removeValue(forKey: sArray[left]) 
                }
                left += 1
            }
        }
        return currentMin != Int.max ? String(sArray[indices[0]...indices[1]]) : ""
    }
}
