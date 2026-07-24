class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
       var result: [Int] = Array(repeating: 0, count: temperatures.count)
       var stack: [Int] = []
       for i in 0..<temperatures.count {
        while let last = stack.last, temperatures[i] > temperatures[last] {
            let removedIndex = stack.removeLast()
            result[last] = i - removedIndex
        }
        stack.append(i)
       }
       return result
    }
}
