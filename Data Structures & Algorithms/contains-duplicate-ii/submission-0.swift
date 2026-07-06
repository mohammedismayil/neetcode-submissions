class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
var left = 0
var window: Set<Int> = []
for right in 0..<nums.count {
    if right - left > k {
        window.remove(nums[left])
        left += 1
    }
    if window.contains(nums[right]) {
        return true
    }
    window.insert(nums[right])

}
return false
    }
}
