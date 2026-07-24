class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack: [Int] = []
        for token in tokens {
            switch token {
                case "+" :
                stack.append(stack.popLast()!+stack.popLast()!)
                 case "*" :
                stack.append(stack.popLast()!*stack.popLast()!)
                 case "-" :
                 let a = stack.popLast()!
                 let b = stack.popLast()!
                stack.append(b-a)
                 case "/" :
                let a = stack.popLast()!
                 let b = stack.popLast()!
                  stack.append(b/a)
                default: 
                stack.append(Int(token)!)
            }
        }
        return stack[0]
    }
}
