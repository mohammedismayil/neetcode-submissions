class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
var ans = [Int]()
        for _ in 0..<2 {
            for num in nums {
                ans.append(num)
            }
        }
        return ans
    }
}
