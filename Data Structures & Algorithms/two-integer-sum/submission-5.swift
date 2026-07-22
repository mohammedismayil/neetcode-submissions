class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        var result: [Int] = []
        for num in 0..<nums.count {
            let exist = (target - nums[num])
            if let index = dict[nums[num]] {
                result.append(index)
                result.append(num)
            } else {
                dict[exist] = num
            }
        }
        return result
    }
}
