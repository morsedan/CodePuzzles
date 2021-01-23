//
//  main.swift
//  Disemvowell
//
//  Created by morse on 1/23/21.
//

import Foundation

func disemvowel1(_ s: String) -> String {
    var result = ""
    for letter in s {
        if !["a", "e", "i", "o", "u"].contains(letter.lowercased()) {
            result.append(letter)
        }
    }
    return result
}

func disemvowel2(_ s: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    return s.filter { !vowels.contains($0.lowercased()) }
}

func disemvowel(_ s: String) -> String {
  return s.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])
}

func test() {
    assert("Ths wbst s fr lsrs LL!" == disemvowel("This website is for losers LOL!"))
    assert("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd" == disemvowel("No offense but,\nYour writing is among the worst I've ever read"))
    assert("Wht r y,  cmmnst?" == disemvowel("What are you, a communist?"))
}

test()
print("passed!")
