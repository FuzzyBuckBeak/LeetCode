import Foundation

/*
 
 A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).

 The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

 How many possible unique paths are there?
 
 */


class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var solution: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
        for i in 0 ..< n { solution[0][i] = 1 }
        for i in 0 ..< m { solution[i][0] = 1 }
        for i in 1 ..< m {
            for j in 1 ..< n {
                solution[i][j] = solution[i - 1][j] + solution[i][j - 1]
            }
        }
        return solution[m-1][n-1]
    }
}
