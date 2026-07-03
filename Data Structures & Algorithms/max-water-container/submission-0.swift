class Solution {
    func maxArea(_ heights: [Int]) -> Int {
var leftPointer = 0
var rightPointer = heights.count - 1
var maxArea = 0
while leftPointer < rightPointer {
maxArea = max(maxArea, min(heights[leftPointer], heights[rightPointer]) * (rightPointer - leftPointer))
if heights[leftPointer] < heights[rightPointer] {
leftPointer += 1
} else {
rightPointer -= 1
}

}
return maxArea
    }
}
