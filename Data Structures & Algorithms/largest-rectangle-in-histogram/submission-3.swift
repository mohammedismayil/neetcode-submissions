class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var stack:[Int] = []
var result = 0
for i in 0...heights.count {
    let number = i == heights.count ? 0 : heights[i]
    while !stack.isEmpty && number < heights[stack.last!] {
        
        let last = stack.removeLast()
        let height = heights[last]
        let width = stack.isEmpty ? i : i - stack.last! - 1
        result = max(result, height * width)
    }
    stack.append(i)
}
return result
}
}