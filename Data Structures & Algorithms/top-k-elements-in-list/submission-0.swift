class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for num in nums {
            dict[num, default: 0] += 1
        }
        var arr:[(Int,Int)] = []
        for (key,value) in dict {
            arr.append((value,key))
        }
        arr.sort{$0.0<$1.0}
        var result = [Int]()
        while result.count < k {
            result.append(arr.removeLast().1)
        }
        return result
    }
}
