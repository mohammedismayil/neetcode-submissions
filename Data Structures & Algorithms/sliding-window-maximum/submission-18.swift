class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
      var result: [Int] = []
      for i in 0...nums.count-k {
        var currentMax = nums[i]
        for j in i..<(i+k) {
            currentMax = max(currentMax, nums[j])
        }
        result.append(currentMax)
      }
      return result
    }
}
