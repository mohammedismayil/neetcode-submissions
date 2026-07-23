class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var result = 0
        var set = Set(nums)
        for num in nums {
            var current = num
            var streak = 0
            while set.contains(current) {
                current += 1
                streak += 1
            }
            result = max(result,streak)
        }
        return result
    }
}
