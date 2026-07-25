class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var result = 0
        var stack: [Int] = []
        for operation in operations {
            switch operation {
                case "+":
               let count = stack.count
                let newScore = stack[count - 1] + stack[count - 2]
                stack.append(newScore)
                 case "D":
                let a = stack.removeLast()
                stack.append(a)
                stack.append(2*a)
                case "C":
                stack.removeLast()
                default: 
                stack.append(Int(operation)!)
            }
        }
        for value in stack {
            result = result + value
        }
        return result
    }
}
