//
//  main.swift
//  MarTime
//
//  Created by morse on 5/31/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

let dict = ["hi": "marlon"]

let name = dict["hi"]
if let safeName = name {
    print("Here's the name! \(safeName)")
}

if name == nil {
    print(<#T##items: Any...##Any#>)
}

print(dict["hi"])
print(dict["hello"])
