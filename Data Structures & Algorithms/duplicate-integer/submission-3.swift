class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var dict: [Int: Int]  = [:]
        for num in nums {
            if let exist = dict[num] {
                return true
            } else {
                dict[num, default: 0] += 1
            }
        }
        return false
    }
}
