//
//  main.swift
//  MexWave
//
//  Created by morse on 1/30/21.
//

import Foundation

func wave1(_ y: String) -> [String] {
    var result: [String] = []
    
    var characters: [String] = []
    for character in y {
        characters.append(String(character))
    }
    for index in 0..<characters.count {
        if characters[index] == " " {
            continue
        }
        characters[index] = characters[index].uppercased()
        result.append(characters.joined())
        characters[index] = characters[index].lowercased()
    }
    
    return result
}

func wave(_ y: String) -> [String] {
    var wave = [String]()
    for i in y.indices {
        if !y[i].isWhitespace {
            wave.append(y[..<i] + y[i].uppercased() + y[y.index(after: i)...])
        }
    }
    return wave
}

func test() {
    func testHello() {
        let actual = wave("hello")
        assert(actual == ["Hello", "hEllo", "heLlo", "helLo", "hellO"])
    }
    
    func testCodewars() {
        let actual = wave("codewars")
        assert(actual == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"])
        
    }
    
    func testEmptyString() {
        let actual = wave("")
        assert(actual == Array<String>())
        
    }
    
    func testTwoWords() {
        let actual = wave("two words")
        assert(actual == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"])
    }
    
    
    func testGap() {
        let actual = wave(" gap ")
        assert(actual == [" Gap ", " gAp ", " gaP "])
        
    }
    testHello()
    testCodewars()
    testEmptyString()
    testTwoWords()
    testGap()
}

test()
print("passed!")
