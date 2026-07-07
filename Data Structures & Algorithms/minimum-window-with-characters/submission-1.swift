class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
let sArray = Array(s)
let tArray = Array(t)
var targetDict: [Character: Int] = [:]
var resultLength = Int.max
var tuple = [0,0]
for value in 0..<tArray.count {
    targetDict[tArray[value], default: 0] += 1
}
for i in 0..<sArray.count {
    var window: [Character: Int] = [:]
    for j in i..<sArray.count {
        window[sArray[j], default: 0] += 1
        var flag = true

        for (key,value) in targetDict {
            let count = window[key, default: 0]
            if count < value {
                flag = false
                break
            }
        }
        if flag && (j-i+1) < resultLength {
            resultLength = j-i+1
            tuple = [i,j]
        }

    }
}

return resultLength != Int.max ? String(sArray[tuple[0]...tuple[1]]) : ""
    }
}
