class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
var tempArray: [Int] = Array(repeating: 0, count: nums.count)
for i in 0..<nums.count {
    tempArray[(i+k) % nums.count] = nums[i] 
}
for i in 0..<nums.count {
    nums[i] = tempArray[i]
}
    }
}
