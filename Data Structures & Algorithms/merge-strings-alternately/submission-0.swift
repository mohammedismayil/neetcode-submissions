class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var array1 = Array(word1)
        var array2 = Array(word2)
        var isWord1 = word1.count > word2.count ? true : false
        var finalWord:[Character] = []
        for i in 0..<(isWord1 ? word1.count : word2.count){
            if isWord1 {
                finalWord.append(array1[i])
 if i < word2.count {
finalWord.append(array2[i])
                }
            } else {
                if i < word1.count {
finalWord.append(array1[i])
                }
            finalWord.append(array2[i])
            }
            
        }
        return String(finalWord)
    }
}
