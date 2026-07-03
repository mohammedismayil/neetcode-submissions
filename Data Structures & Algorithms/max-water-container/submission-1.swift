class Solution {
    func maxArea(_ heights: [Int]) -> Int {
var leftPointer = 0
var rightPointer = heights.count - 1
var maxArea = 0
while leftPointer < rightPointer {
    let leftVal = heights[leftPointer]
            let rightVal = heights[rightPointer]
maxArea = max(maxArea, min(leftVal, rightVal) * (rightPointer - leftPointer))
if leftVal < rightVal {
leftPointer += 1
} else {
rightPointer -= 1
}

}
return maxArea
    }
}
