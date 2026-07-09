class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var left = 0
        var sum = 0
        var result = Int.max
        for right in 0..<nums.count {
            sum += nums[right]
            while sum >= target {
                sum -= nums[left]
                result = min(result, right-left+1)
                left += 1

            }
            

        }
        return result != Int.max ? result : 0
    }
}
