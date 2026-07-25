class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var result = 0
        for i in 0..<heights.count {
            var rightMost = i
            while rightMost + 1 < heights.count && heights[rightMost + 1] >= heights[i] {
                rightMost += 1
            }
            var leftMost = i
            while leftMost - 1 >= 0 && heights[leftMost - 1] >= heights[i] {
               leftMost -= 1
            }
            let width = rightMost - leftMost + 1
            result = max(result, heights[i] * width )
        }
        return result
    }
}
