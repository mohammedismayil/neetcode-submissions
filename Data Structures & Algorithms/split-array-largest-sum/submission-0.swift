class Solution {
    func splitArray(_ nums: [Int], _ k: Int) -> Int {
        var left = nums.max()!
        var right = nums.reduce(0,+)

        func canSplit(largest: Int) -> Bool {
            var currentSum = 0
            var subArray = 1
            for num in nums {
                currentSum += num
                if currentSum > largest {
                    subArray += 1
                    if subArray > k {
                        return false
                    }
                    currentSum = num
                }
            }
            return true
        }
        var result = right
        while left <= right {
            let mid = (left+right) / 2
            if canSplit(largest: mid) {
                result = mid
                right = mid - 1
            } else {
                left  = mid + 1
            }
        }
        return result
    }
}
