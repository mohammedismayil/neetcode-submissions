class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
var mergedArray = nums1+nums2
mergedArray.sort()
if mergedArray.count % 2 != 0 {
    return Double(mergedArray[mergedArray.count/2])
} else {
    let total = Double(mergedArray[mergedArray.count/2]) + Double(mergedArray[(mergedArray.count/2)-1])
    return Double(total/2)
}
    }
}
