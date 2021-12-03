import Foundation

func minDistance(_ word1: String, _ word2: String) -> Int {
        
    guard word1.count > 0 && word2.count > 0 else { return max(word1.count,word2.count) }
  
        
    var result = Array(repeating: Array(repeating: 0, count: word1.count + 1), count: word2.count + 1)

    let word1 = Array(word1)
    let word2 = Array(word2)
    
    for i in 0 ... word1.count {
        result[0][i] = i
    }

    for i in 0 ... word2.count {
        result[i][0] = i
    }

    for i in 1 ... word2.count {
        for j in 1 ... word1.count {
            if (word2[i-1] == word1[j-1]) {
                result[i][j] = result[i-1][j-1]
            } else {
                result[i][j] = min(result[i-1][j-1], result[i-1][j], result[i][j-1]) + 1
            }
        }
    }

    return result[word2.count][word1.count]
}



