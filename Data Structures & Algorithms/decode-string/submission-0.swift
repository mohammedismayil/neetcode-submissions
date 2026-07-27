class Solution {
    func decodeString(_ s: String) -> String {
        var stack: [String] = []
        var array = Array(s)
        for char in array {
            if stack.isEmpty {
                stack.append(String(char))
            } else if char != "]" {
                stack.append(String(char))
            } else {
                var currentString = ""
                while stack.last != "[" {
                    currentString = stack.removeLast() + currentString 
                }
                stack.removeLast()
                var number = ""
                while !stack.isEmpty && stack.last!.first!.isNumber {
                    number = stack.removeLast() + number 
                }
                var k = Int(number)!
                stack.append(String(repeating: currentString, count: k))
            }
        }
        return stack.joined()
    }
}
