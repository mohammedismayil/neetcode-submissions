class Solution {
    func trap(_ height: [Int]) -> Int {
var leftPointer = 0
var rightPointer = height.count - 1
var leftMax = height[leftPointer]
var rightMax = height[rightPointer]
var result = 0
while leftPointer < rightPointer {
    if leftMax < rightMax {
        leftPointer += 1
         leftMax = max(leftMax, height[leftPointer])
       
        
        result = result + leftMax - height[leftPointer]
         
    } else  {
        rightPointer -= 1
       rightMax = max(rightMax, height[rightPointer])
        
        
        result = result + rightMax - height[rightPointer]
        
    }
}
return result
    }
}
