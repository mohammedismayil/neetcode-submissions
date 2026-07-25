class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var timeDict: [(Int, Double)] = []
        for i in 0..<position.count {
            let time = (Double(target) - Double(position[i])) / Double(speed[i])
            timeDict.append((position[i],Double(time)))
        }
        timeDict.sort(by: {$0 > $1})
        var stack: [Double] = []
        for car in timeDict {
            if !stack.isEmpty && car.1 <= Double(stack.last!) {
                continue
            } else {
                stack.append(Double(car.1))
            }
        }
        return stack.count
    }
}
