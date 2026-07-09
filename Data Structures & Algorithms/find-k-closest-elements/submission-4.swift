class Solution {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        var left = 0
        var right = arr.count - 1
        while (right - left >= k) {
            if abs(x-arr[left]) <= abs(x-arr[right]) {
                right -= 1
            } else {
                left += 1
            }
        }
        return Array(arr[left...right])
    }
}
