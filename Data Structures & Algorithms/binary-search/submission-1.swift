class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        func binarySearch(arr: [Int], l: Int, r: Int,target: Int) -> Int {
            if l > r {
                return -1
            }
            let middle = (l+r) / 2
            if target == arr[middle] {
                return middle
            }
            if arr[middle] > target {
                return binarySearch(arr: arr, l: l, r: middle-1, target: target)
            } else {
                return binarySearch(arr: arr, l: middle+1, r: arr.count-1, target: target)
            }

        }
        return binarySearch(arr: nums, l:0, r: nums.count-1, target: target)
    }
}
