class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        var left = 0
        var window: [Character: Int] = [:]
        var tArray = Array(t)
        var existDict: [Character: Int] = [:]
        for char in tArray {
            existDict[char, default: 0] += 1
        }
        var sArray = Array(s)
        var have = 0
        var need = existDict.count
        var index: [Int] = []
        var minimum = Int.max
        for right in 0..<sArray.count {
            window[sArray[right],default: 0] += 1
            if let count = existDict[sArray[right]], count == window[sArray[right]] {
                have += 1
            }
            while have == need {
                if right-left+1 < minimum {
minimum = min(minimum,right-left+1)
index = [left,right]
                 }
                 if let count = existDict[sArray[left]], count == window[sArray[left]] {
                  have -= 1
                 }
                window[sArray[left], default:0] -= 1
                
                 if window[sArray[left],default:0] == 0 {
                    window.removeValue(forKey: sArray[left])
                 }
                 left += 1
                 
            }
            
        }
        return minimum != Int.max ? String(sArray[index[0]...index[1]]) : ""
    }
}
