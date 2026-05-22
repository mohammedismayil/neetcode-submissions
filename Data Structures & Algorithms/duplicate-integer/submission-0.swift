class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
var dictionary: [Int: Int] = [:]
for num in nums {
    if dictionary[num] != nil {
        return true
    }
    dictionary[num] = num
}
return false
    }
}
