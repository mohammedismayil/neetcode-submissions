class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var leftPointer = 0
        var rightPointer = numbers.count - 1
        while leftPointer < rightPointer {
            if numbers[leftPointer] + numbers[rightPointer] < target {
                leftPointer += 1
            } else if numbers[leftPointer] + numbers[rightPointer] > target {
                rightPointer -= 1
            } else {
                return [leftPointer + 1, rightPointer + 1]
            }
        }
        return [leftPointer + 1, rightPointer + 1]
    }
}
