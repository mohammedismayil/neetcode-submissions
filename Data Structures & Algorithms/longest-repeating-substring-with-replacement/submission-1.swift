class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
var left = 0
var result = 0
var window:[Character: Int] = [:]
var currentMax = 0
var array = Array(s)
for right in 0..<array.count {
    window[array[right], default: 0] += 1
    currentMax = max(currentMax, window[array[right]]!)
    if right-left+1-currentMax > k {
        window[array[left], default: 0] -= 1
        left += 1
        
    }
    if right-left+1-currentMax <= k {
        result = max(result, right-left+1)
    }
}
return result
    }
}
