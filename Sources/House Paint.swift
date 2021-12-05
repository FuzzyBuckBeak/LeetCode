import Foundation

/* here are a row of n houses, each house can be painted with one of the three colors: red, blue or green. The cost of painting each house with a certain color is different. You have to paint all the houses such that no two adjacent houses have the same color.

The cost of painting each house with a certain color is represented by a n x 3 cost matrix. For example, costs[0][0] is the cost of painting house 0 with color red; costs[1][2] is the cost of painting house 1 with color green, and so on... Find the minimum cost to paint all houses. */

func minCost(_ n: Int, _ costmatrix: [[Int]]) -> Int {
        
    //3 here is the number of colors. Given three colors Red, Green and Blue
    //n here is the number of houses.
    var result = Array(repeating: Array(repeating: 0, count: 3), count: n)
    
    //Base conditions for first house
    result[0][0] = costmatrix[0][0] //If the first house needs to be painted Red, then pick the cost to paint Red
    result[0][1] = costmatrix[0][1] //If the first house needs to be painted Green, then pick the cost to paint Green
    result[0][2] = costmatrix[0][2] //If the first house needs to be painted Blue, then pick the cost to paint Blue
    
    
    for i in 1 ..< n {
        //if you want to paint the second house Red, then the total cost to paint first house + second house is to find
        // min cost to paint the first house with Green or Blue and add the cost of second house to paint Red
        result[i][0] = min(result[i-1][1], result[i-1][2]) + costmatrix[i][0]
        
        //if you want to paint the second house Green, then the total cost to paint first house + second house is to find
        // min cost to paint the first house with Red or Blue and add the cost of second house to paint Green
        result[i][1] = min(result[i-1][0], result[i-1][2]) + costmatrix[i][1]
        
        //if you want to paint the second house Blue, then the total cost to paint first house + second house is to find
        // min cost to paint the first house with Red or Green and add the cost of second house to paint Blue
        result[i][2] = min(result[i-1][0], result[i-1][1]) + costmatrix[i][2]
    }
    
    print(result)
    return min(result[n-1][0], result[n-1][1], result[n-1][2])
}


print(minCost(3, [[14, 2, 11], [11, 14, 5], [14, 3, 10]]))
