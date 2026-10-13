class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var leftValue = 1
        var rightValue = piles.max()!

        while leftValue < rightValue {
            let mid = (leftValue+rightValue)/2
            var currentSum = 0
            for value in piles {
                currentSum = currentSum + Int(ceil(Double(value)/Double(mid)))
            }
            if currentSum <= h {
                rightValue = mid
            } else {
                leftValue = mid + 1
            }
        }
        return leftValue
    }
}
