class Solution {
    func validPalindrome(_ s: String) -> Bool {
        var left = 0
        var right = s.count - 1
        var array = Array(s)
        while left < right {
            if array[left] != array[right] {
                return isValid(left: left+1, right: right, array: array) || isValid(left: left, right: right - 1, array: array) 
            }
            left += 1
            right -= 1
        }
        return true
    }

    func isValid(left: Int, right: Int, array: [Character]) -> Bool {
        var left = left
        var right = right
        while left < right {
            if array[left] != array[right] {
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}
