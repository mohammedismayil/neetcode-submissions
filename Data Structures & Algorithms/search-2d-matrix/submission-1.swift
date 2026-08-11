class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var isFound = false
        for row in matrix {
            func binarySearch(arr: [Int], l: Int, r: Int, target: Int) -> Bool {
                let m = (l+r) / 2
                if target == arr[m] {
                    return true
                }
                if l > r {
                    return false
                }
                if arr[m] > target {
                    return binarySearch(arr: arr, l: l, r: m-1, target: target)
                } else {
                    return binarySearch(arr: arr, l: m+1, r: r, target: target)
                }

            }
            if binarySearch(arr: row, l: 0, r: row.count-1, target: target) {
                return true
            }
        }
        return isFound
    }
}
