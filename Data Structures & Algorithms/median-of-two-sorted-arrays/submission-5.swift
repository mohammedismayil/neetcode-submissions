class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

        let left = (nums1.count+nums2.count+1)/2
        let right = (nums1.count+nums2.count+2)/2

        func findKthSmallest(a:[Int],b:[Int],m:Int,n:Int,aStart:Int,bStart:Int,k:Int) -> Int {
            if m > n {
    return findKthSmallest(a:b,b:a,m:n,n: m,aStart: bStart, bStart: aStart,k:k)
}
            if m == 0 {
                return b[bStart+k-1]
            }
            if k == 1 {
                return min(a[aStart],b[bStart])
            }
            let i = min(m,k/2)
            let j = min(n,k/2)
            if a[aStart+i-1] > b[bStart+j-1] {
                return findKthSmallest(a:a,b:b,m:m,n: n-j,aStart: aStart, bStart: bStart+j,k:k-j)
            } else {
                return findKthSmallest(a:a,b:b,m:m-i,n: n,aStart: aStart+i, bStart: bStart,k:k-i)
            }
        }
        return Double((Double(findKthSmallest(a:nums1,b:nums2,m:nums1.count,n: nums2.count,aStart: 0, bStart: 0,k: left))+Double(findKthSmallest(a:nums1,b:nums2,m:nums1.count,n: nums2.count,aStart: 0, bStart: 0,k: right)))/2)
    }
}
