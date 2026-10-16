class Solution {
    func search(_ nums: [Int], _ target: Int) -> Bool {
        var l = 0
        var r = nums.count - 1
        while l <= r {
            let m = l + (r - l) / 2
            if nums[m] == target {
                return true
            }
            if nums[m] > nums[l] {
                if target >= nums[l] && target < nums[m] {
                    r = m - 1
                } else {
                    l = m + 1
                }
            } else if nums[m] < nums[l] {
                if nums[r] >= target && target > nums[m] {
                    l = m + 1 
                } else {
                    r = m - 1
                }
            } else {
                l += 1
            }
        }
        return false
    }
}
