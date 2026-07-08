class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var result: [Int] = []
        for i in 0...(nums.count-k) {
            var maxi = nums[i]
            for j in i..<(i+k) {
                maxi = max(maxi, nums[j])
            }
            result.append(maxi)
        }
        return result
    }
}
