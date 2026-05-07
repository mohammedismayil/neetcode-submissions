class Solution {
   func findKthLargest(_ nums: [Int], _ k: Int) -> Int {

var arrayNums = nums

func partition(_ left: Int, _ right: Int) -> Int {
    let pivot = right
    var i = left
    for j in left..<right {
        if arrayNums[j] <= arrayNums[right] {
            arrayNums.swapAt(j,i)
            i = i + 1
        }
    }
    arrayNums.swapAt(i, pivot)
    return i
}

var left = 0
var right = arrayNums.count - 1


var partitionedValue = partition(left,right)
while left <= right {
    partitionedValue = partition(left,right) 
if partitionedValue == (arrayNums.count-k) {
    return arrayNums[partitionedValue]
} else if partitionedValue < (arrayNums.count - k)  {
   left = partitionedValue + 1
} else {
     right = partitionedValue - 1
    
}
}

return arrayNums[partitionedValue]

   }  

    
}
