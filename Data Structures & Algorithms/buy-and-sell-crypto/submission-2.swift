class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var left = 0
        for right in 0..<prices.count {
            maxProfit = max(maxProfit, prices[right] - prices[left])
            if prices[right] < prices[left] {
                left = right 
            }
            
        }
        return maxProfit
    }
}
