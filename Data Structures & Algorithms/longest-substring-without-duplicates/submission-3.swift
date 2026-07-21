class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var left = 0
        var window: [Character: Int] = [:]
        var result = 0
        var array = Array(s)
        for right in 0..<array.count {
            if let exist = window[array[right]] {
                window[array[right], default: 0] = right
                if exist >= left {
left = exist + 1
                }

            } else {
window[array[right], default: 0] = right
            }
            result = max(result, right-left+1)
        }
        return result
    }
}
