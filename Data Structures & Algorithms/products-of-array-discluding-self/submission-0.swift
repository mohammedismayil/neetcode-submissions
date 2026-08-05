class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var product = 1
        var zeroCount = 0
        var result: [Int] = []
        for num in nums {
            if num == 0 {
                zeroCount += 1
            } else {
                product *= num
            }
        }
        if zeroCount > 1 {
            return Array(repeating: 0, count: nums.count)
        }
        for num in nums {
            if zeroCount > 0 {
                result.append(num == 0 ? product : 0)
            } else {
                result.append(product/num)
            }
        }
        return result
    }
}
