class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
var sortedArray = nums.sorted()
var result: [[Int]] = []
for i in 0..<sortedArray.count - 1 {
    let a = sortedArray[i]
    if a > 0 {
        break
    } else if i > 0 && a == sortedArray[i-1] {
        continue
    }
    var leftPointer = i + 1
    var rightPointer = sortedArray.count - 1
    
    while leftPointer < rightPointer {
        let sum = a + sortedArray[leftPointer] + sortedArray[rightPointer]
if sum == 0 {
        result.append([a, sortedArray[leftPointer], sortedArray[rightPointer]])
        leftPointer += 1
        rightPointer -= 1
        while sortedArray[leftPointer] == sortedArray[leftPointer - 1] && leftPointer < rightPointer {
            leftPointer += 1
        }
    } else if sum < 0 {
        leftPointer += 1
    } else {
        rightPointer -= 1
        
    }
    }
    
}
return result
    }
}
