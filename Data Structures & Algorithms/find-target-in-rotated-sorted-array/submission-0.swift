class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left < right {
            let mid = (left+right)/2
            if nums[mid] > nums[right] {
                left = mid + 1
            } else {
                right = mid
            }
        }
        let pivot = left
        func binarySearch(left: Int, right: Int) -> Int {
            var l = left, r = right
while l <= r {
            var midValue = (l+r)/2
            if target == nums[midValue] {
                return midValue
            } else if target > nums[midValue] {
                l = midValue + 1
            } else {
                r = midValue - 1
            }
        }
        return -1
        }
        
        let result = binarySearch(left: 0, right: pivot)
        if result != -1 {
            return result
        } 
        return binarySearch(left: pivot, right: nums.count-1)
        
    }
}
