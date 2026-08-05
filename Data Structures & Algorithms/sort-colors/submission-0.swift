class Solution {
    func sortColors(_ nums: inout [Int]) {
        var dict: [Int: Int] = [:]
        for num in nums {
            dict[num, default: 0] += 1
        }
        var current = 0
        for i in 0..<3{
            var count = dict[i, default: 0]
            while count != 0 {
                count -= 1
                nums[current] = i
                current += 1
                
            }
        }
    }
}
