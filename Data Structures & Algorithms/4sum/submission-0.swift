class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
let sorted = nums.sorted()
let count = sorted.count
var result: [[Int]] = []
for i in 0..<count {
    if i > 0 && sorted[i] == sorted[i-1] {
        continue
    }
    for j in i+1..<count {
        if j > i+1 && sorted[j] == sorted[j-1] {
            continue
        }
        var left = j+1
        var right = count - 1
        while left < right {
            if sorted[i] + sorted[j] + sorted[left] + sorted[right] == target {
                result.append([sorted[i],sorted[j],sorted[left],sorted[right]])
                left += 1
                right -= 1
                
                while left < right && sorted[left] == sorted[left - 1] {
                    left += 1
                }
            } else if sorted[i] + sorted[j] + sorted[left] + sorted[right] < target {
                left += 1
            } else {
                right -= 1

            }
        }

    }
}
return result
    }
}
