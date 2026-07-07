class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
var s2Array = Array(s2)
var dict: [Character: Int] = [:]
for char in s1 {
    dict[char,default: 0] += 1
}
var left = 0
var window: [Character: Int] = [:]
for right in 0..<s2Array.count {
     window[s2Array[right], default: 0] += 1
     if right - left + 1 > s1.count {
if let value = window[s2Array[left]] {
            if value == 1 {
                window.removeValue(forKey: s2Array[left])
            } else {
                window[s2Array[left], default: 0] = value - 1
            }
        } 
left+=1
     }
    
    if window == dict {
        return true
    }
}
return false
    }
}
