class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
var leftPointer = 0
var rightPointer = people.count - 1
let sortedArray = people.sorted()
var rescueBoats = 0
while leftPointer <= rightPointer {
    let difference = limit - sortedArray[rightPointer]
    rightPointer -= 1
    rescueBoats += 1
    
    if difference >= sortedArray[leftPointer]  && leftPointer <= rightPointer {
        leftPointer += 1
    }

}
return rescueBoats
    }
}
