class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        func sort(arr: inout [Int], l: Int, r: Int) {
            if l >= r {
                return
            }
            let m = (l + r) / 2
            sort(arr: &arr, l: l , r: m)
            sort(arr: &arr, l: m+1, r: r)
            merge(arr: &arr, l: l, r: r, m: m)
        }
        func merge(arr: inout [Int], l: Int, r: Int, m : Int) {
            let left = Array(arr[l...m])
            let right = Array(arr[m+1...r])
            var i = 0
            var j = 0
            var k = l
            while i < left.count && j < right.count {
                if left[i] <= right[j] {
                    arr[k] = left[i]
                    i += 1
                } else {
                    arr[k] = right[j]
                    j += 1
                }
                k += 1
            }
            while i < left.count {
                arr[k] = left[i]
                i+=1
                k+=1
            }
            while j < right.count {
                arr[k] = right[j]
                j+=1
                k+=1
            }
        }
        var nums = nums
        sort(arr: &nums, l: 0, r: nums.count - 1)
        return nums
    }
}
