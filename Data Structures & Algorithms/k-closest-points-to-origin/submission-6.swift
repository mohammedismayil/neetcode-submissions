class Solution {
       func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
       var points = points
       var left = 0

       var right = points.count - 1
       func valueAtPoint(point: [Int]) -> Int {
           return point[0] * point[0] + point[1] * point[1]
           }
           func partition(_ left: Int, _ right: Int) -> Int {
             
               var i = left
                 
                   let pivot = right
                     
                       for j in left..<right {
                           if valueAtPoint(point: points[j]) <= valueAtPoint(point: points[pivot]) {
                                 points.swapAt(i,j)
                                       i = i + 1
                                           }
                                             }
                                               points.swapAt(i,pivot)
                                                 return i
                                                 }
                                                 var pivot = points.count
                                                 while pivot != k {
                                                 pivot = partition(left,right)
                                                    if pivot == k {
                                                       return Array(points[..<k])
                                                       } else if pivot < k {
                                                           left = pivot + 1
                                                           } else {
                                                           right = pivot - 1
                                                               
                                                               }
                                                               }
                                                               return Array(points[..<k])
                                                               }


                                                               
}