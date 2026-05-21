class Solution {
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int: Int]()
        for i in 0..<nums.count{
            let reducedValue = target - nums[i]
                if dictionary[nums[i]] != nil {
                        return  [dictionary[nums[i]]!, i]
                            } else {
                                    dictionary[reducedValue] = i
                                        }
                                        }
                                        return []
                                            }
                                            }
                                            
