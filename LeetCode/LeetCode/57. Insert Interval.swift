//   57. Insert Intervals
//
//  Created by FuzzyBuckBeak on 25/12/18.
//  Copyright © 2018 FuzzyBuckBeak. All rights reserved.
//

/*******************************************************************************************
 Given a set of non-overlapping intervals, insert a new interval into the intervals (merge if necessary).
 
 You may assume that the intervals were initially sorted according to their start times.
 
 Example 1:
 
 Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
 Output: [[1,5],[6,9]]
 Example 2:
 
 Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
 Output: [[1,2],[3,10],[12,16]]
 Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10].
 
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

class InsertMerge {
    func insert(_ intervals: [Interval], _ newInterval: Interval) -> [Interval] {
        var intervals = intervals
        intervals.append(newInterval)
        return merge(intervals)
    }
    
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
