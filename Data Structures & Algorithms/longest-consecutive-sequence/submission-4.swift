class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var result = 0
        var set = Set(nums)
        for num in set {

            
            if !set.contains(num-1) {
                var streak = 1
                while set.contains(num+streak) {
                    streak += 1
                }  
                result = max(result,streak)
            }
            
        }
        return result
    }
}
