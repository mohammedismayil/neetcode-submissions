class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result: [Int] = []
        for i in 0..<temperatures.count {
            var count = 0
            let currentTemp = temperatures[i]
            for j in i+1..<temperatures.count {
                if temperatures[j] > currentTemp {
                    count = j - i
                    break
                }
            }
            result.append(count)
        }
        return result
    }
}
