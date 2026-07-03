class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s)
var leftPointer = 0
var rightPointer = s.count - 1
while leftPointer < rightPointer {
    while leftPointer < rightPointer && !isValidAlphabet(character: chars[leftPointer]) {
        leftPointer += 1
    }
    while leftPointer < rightPointer && !isValidAlphabet(character: chars[rightPointer]) {
        rightPointer -= 1
    }
    if chars[leftPointer].lowercased() != chars[rightPointer].lowercased() {
        return false
    } else {
        leftPointer += 1
        rightPointer -= 1
    }
}
return true
    }
    func isValidAlphabet(character: Character) -> Bool {
        return character.isNumber || character.isLetter
    }
}
