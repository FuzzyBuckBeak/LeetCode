//   56. Merge Intervals
//
//  Created by FuzzyBuckBeak on 25/12/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*******************************************************************************************
 Given a collection of intervals, merge all overlapping intervals.
 
 Example 1:
 
 Input: [[1,3],[2,6],[8,10],[15,18]]
 Output: [[1,6],[8,10],[15,18]]
 Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
 Example 2:
 
 Input: [[1,4],[4,5]]
 Output: [[1,5]]
 Explanation: Intervals [1,4] and [4,5] are considered overlapping.
 
 TestCases:
 let first = Interval(1, 3)
 let second = Interval(2, 6)
 let third = Interval(8, 10)
 let forth = Interval(15, 18)
 
 let first = Interval(1, 4)
 let second = Interval(5, 6)
 
 let first = Interval(1, 4)
 let second = Interval(1, 4)
 
 let first = Interval(1, 4)
 let second = Interval(0, 0)
 
 let first = Interval(1, 4)
 let second = Interval(0, 4)
 
 let first = Interval(1, 4)
 let second = Interval(0, 2)
 let third = Interval(3, 5)
 
 let first = Interval(2, 3)
 let second = Interval(4, 5)
 let third = Interval(6, 7)
 let forth = Interval(8, 9)
 *******************************************************************************************/
import Foundation

public class Interval {
    public var start: Int
    public var end: Int
    public init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
}

class MergeIntervals {
    func merge(_ intervals: [Interval]) -> [Interval] {
        guard intervals.count > 1 else { return intervals }
        let intervalsSorted = intervals.sorted(by: {$0.start < $1.start})
        var result: [Interval] = [intervalsSorted[0]]
        
        var start = intervalsSorted[0].start
        var end = intervalsSorted[0].end
        
        for i in 1 ..< intervalsSorted.count {
            if intervalsSorted[i].start <= end && intervalsSorted[i].end >= start {
                start = min(start, intervalsSorted[i].start)
                end = max(end, intervalsSorted[i].end)
                
                let index = result.count - 1
                result[index].start = start
                result[index].end = end
            } else {
                start = intervalsSorted[i].start
                end = intervalsSorted[i].end
                result.append(Interval(start, end))
            }
        }
        
        return result
    }
}
