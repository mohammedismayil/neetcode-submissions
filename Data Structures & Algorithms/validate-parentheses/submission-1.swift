class Solution {
    func isValid(_ s: String) -> Bool {
        var closeToOpen: [Character: Character] = [")":"(","}":"{","]":"["]
        var array = Array(s)
        var stack: [Character] = []
        for value in array {
            if let open = closeToOpen[value] {
                if !stack.isEmpty && stack.last! == open {
                    stack.popLast()
                } else {
                    return false
                }
            } else {
                stack.append(value)
            }
        }
        return stack.isEmpty
    }
}
