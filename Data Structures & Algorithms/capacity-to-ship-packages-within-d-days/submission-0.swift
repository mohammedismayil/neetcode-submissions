class Solution {
    func shipWithinDays(_ weights: [Int], _ days: Int) -> Int {
        var leftValue = weights.max()!
        var rightValue = weights.reduce(0,+)
        while leftValue < rightValue {
            var currentSum = 0
            var requiredDays = 1
            let mid = (leftValue+rightValue) / 2

            for weight in weights {
                if currentSum + weight > mid {
                    requiredDays += 1
                    currentSum = 0
                }
                currentSum += weight
            }
            if requiredDays <= days {
                rightValue = mid
            } else {
                leftValue = mid + 1
            }
        }
        return leftValue
    }
}
