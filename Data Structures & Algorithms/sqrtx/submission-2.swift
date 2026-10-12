class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x < 2 {
            return x
        }
var leftValue = 1

var rightValue = x / 2

var answer = 1

while leftValue <= rightValue {
  let mid = (leftValue + rightValue) / 2
  let result = mid * mid
  if result == x {
    answer = mid
    return answer
  } else if result < x {
    answer = mid
    leftValue = mid + 1
  } else {
    rightValue = mid - 1
  }
}
return answer
    }
}
