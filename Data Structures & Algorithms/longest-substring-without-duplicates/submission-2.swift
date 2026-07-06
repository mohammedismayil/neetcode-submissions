class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
var array = Array(s)
        var left = 0
        var result = 0
        var window: [Character: Int] = [:]
        for right in 0..<array.count{
            if let count = window[array[right]], count >= left {
                left  = count + 1
            }
            window[array[right], default: 0] = right
            result = max(result,right-left+1)
        }
        return result
    }
}
