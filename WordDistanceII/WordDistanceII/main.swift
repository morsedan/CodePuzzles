import Foundation

class WordDistance{
    let words: [String]
    init(_ words: [String]) {
        self.words = words
    }
    
    func shortest (_ word1: String, _ word2: String) -> Int {
        var shortestDistance = -1
        var currentWord: String = ""
        var currentWordIndex = -1
        
        for (index, word) in words.enumerated() {
            if word == word1 {
                // look for word 2
                if currentWord.isEmpty {
                    currentWord = word2
                    currentWordIndex = index
                }
                
                if currentWord == word1 {
                    currentWordIndex = index
                } else if currentWord == word2 {
                    let currentDistance = index - currentWordIndex
                    
                    if shortestDistance < 1 {
                        shortestDistance = currentDistance
                    }
                    
                    shortestDistance = currentDistance < shortestDistance ? currentDistance : shortestDistance
                    currentWord = word1
                    currentWordIndex = index
                }
            } else if word == word2 {
                // look for word 1
                if currentWord.isEmpty {
                    currentWord = word1
                    currentWordIndex = index
                }
                
                if currentWord == word2 {
                    currentWordIndex = index
                } else if currentWord == word1 {
                    let currentDistance = index - currentWordIndex
                    
                    if shortestDistance < 1 {
                        shortestDistance = currentDistance
                    }
                    
                    shortestDistance = currentDistance < shortestDistance ? currentDistance : shortestDistance
                    currentWord = word2
                    currentWordIndex = index
                }
            }
        }
        return shortestDistance
    }
}

let wordDistance = WordDistance(["a", "b", "c", "d", "e", "f", "g", "c", "f", "b"])

var distance = wordDistance.shortest("a", "c")
assert(distance == 2)
distance = wordDistance.shortest("g", "b")
assert(distance == 3)
distance = wordDistance.shortest("f", "b")
assert(distance == 1)
print("Tests passed!")
