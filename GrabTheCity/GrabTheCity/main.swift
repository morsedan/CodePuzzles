//
//  main.swift
//  GrabTheCity
//
//  Created by morse on 6/26/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func grabCity(_ theString: String) -> String {
    
    let firstStrings = theString.split(separator: "[")
    guard let cityWithBracket = firstStrings.last else {
        return ""
    }
    
    let city = cityWithBracket.replacingOccurrences(of: "]", with: "")
    
    return city
}

print(grabCity("[Last Day!] Beer Festival [Munich]")) // ➞ "Munich"

print(grabCity("Cheese Factory Tour [Portland]")) // ➞ "Portland"

print(grabCity("[50% Off!][Group Tours Included] 5-Day Trip to Onsen [Kyoto]")) // ➞ "Kyoto"

