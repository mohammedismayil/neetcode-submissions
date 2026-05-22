class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
var leftPointer = 0
var maximumCount = 0
var array = Array(s)
var dictionary: [Character: Int] = [:]
for i in 0..<array.count {

if let index = dictionary[array[i]] {
    leftPointer = max(leftPointer, index+1)
}
dictionary[array[i]] = i
maximumCount = max(maximumCount, i - leftPointer + 1)
}
return maximumCount
    }
}
