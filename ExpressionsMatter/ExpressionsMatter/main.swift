//
//  main.swift
//  ExpressionsMatter
//
//  Created by morse on 9/13/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func expressionMatter(_ a: Int, _ b: Int, _ c: Int) -> Int {
    
    let option1 = a * b * c
    let option2 = a * (b + c)
    let option3 = (a + b) * c
    let option4 = a + b + c
    
    return [option1, option2, option3, option4].max()!
}

print(expressionMatter(2, 2, 2))
