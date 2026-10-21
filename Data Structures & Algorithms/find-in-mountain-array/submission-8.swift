/**
 * // This is MountainArray's API interface.
 * // You should not implement it, or speculate about its implementation
 * protocol MountainArray {
 *     func get(_ index: Int) -> Int
 *     func length() -> Int
 * }
 */

class Solution {
    func findInMountainArray(_ target: Int, _ mountainArr: MountainArray) -> Int {
let length = mountainArr.length()
var l = 1
var r = length - 2
var peak = 0 
while l <= r {
    let mid = (l+r)/2
    let leftValue = mountainArr.get(mid-1)
    let rightValue = mountainArr.get(mid+1)
    let midValue = mountainArr.get(mid)
    if midValue > leftValue && midValue < rightValue{
        l = mid + 1
    } else if midValue < leftValue && midValue > rightValue {
        r = mid - 1
    } else {
        peak = mid
        break
    }
}
l = 0
r = peak - 1
while l<=r {
    let mid = (l+r)/2
    let midValue = mountainArr.get(mid)
    if midValue < target {
        l = mid + 1
    } else if midValue > target {
        r = mid - 1
    } else {
        return mid
    }
}

l = peak
r = length - 1
while l<=r {
    let mid = (l+r)/2
    let midValue = mountainArr.get(mid)
    if midValue > target {
        l = mid + 1
    } else if midValue < target {
        r = mid - 1
    } else  {
        return mid
    }
}
return -1

    }
}
