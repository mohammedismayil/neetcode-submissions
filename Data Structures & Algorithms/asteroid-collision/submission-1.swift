class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack:[Int] = []
        for var num in asteroids {
            while !stack.isEmpty && stack.last! > 0 && num < 0  {
                let diff = stack.last! + num
                if diff < 0 {
                    stack.removeLast()
                } else if diff > 0 {
                   num = 0
                } else {
                    num = 0
                    stack.removeLast()
                }
            }
            if num != 0 {
                stack.append(num)
            }
        }
        return stack
    }
}
