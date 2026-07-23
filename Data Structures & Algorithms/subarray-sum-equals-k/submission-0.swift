class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        var dict: [Int: Int] = [0:1]
        var currentSum = 0
        for num in nums {
            currentSum += num
            let target = currentSum - k
            if let count = dict[target] {
                result += count
            }
            dict[currentSum, default: 0] += 1
        }
        return result
    }
}
