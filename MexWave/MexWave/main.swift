//
//  main.swift
//  MexWave
//
//  Created by morse on 1/30/21.
//

import Foundation

func wave(_ y: String) -> [String] {
    var result: [String] = []
    
    var characters: [String] = []
    for character in y {
        characters.append(String(character))
    }
    for index in 0..<characters.count {
        characters[index] = characters[index].uppercased()
        result.append(characters.joined())
        characters[index] = characters[index].lowercased()
    }
    
    return result
}

print(wave("abcccde"))
