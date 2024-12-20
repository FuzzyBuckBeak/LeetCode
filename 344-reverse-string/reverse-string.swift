class Solution {
    func reverseString(_ s: inout [Character]) {
         var leftPointer = 0
        var rightPointer = s.count - 1
    
        while leftPointer <= rightPointer {
            let leftValue = s[leftPointer]
            s[leftPointer] = s[rightPointer]
            s[rightPointer] = leftValue
            
            leftPointer += 1
            rightPointer -= 1
        }
    }
}