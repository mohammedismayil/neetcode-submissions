class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var target = nums.count / 3
        var dict: [Int: Int] = [:]
        var result: [Int] = []
        for num in nums {
            dict[num, default: 0] += 1
            if dict[num, default: 0] > target  && !result.contains(num){
                result.append(num)
            }
        }
        return result
    }
}
