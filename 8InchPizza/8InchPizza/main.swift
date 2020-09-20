//
//  main.swift
//  8InchPizza
//
//  Created by morse on 9/19/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func howManyPizzas(_ n: Int) -> String {
    let eightInch = 16 * 3.14
    var pizzas = 0
    var slices = 0
    let nInch = ((Double(n) / 2.0) * (Double(n) / 2.0) * 3.14)
    
    pizzas = Int(nInch / eightInch)
    slices = Int((((nInch / eightInch) - Double(pizzas)) * 8).rounded())
    if slices == 8 {
        pizzas += 1
        slices = 0
    }
    return "pizzas: \(pizzas), slices: \(slices)"
}
func sampleTests() {
    assert(howManyPizzas(16) == "pizzas: 4, slices: 0")
    assert(howManyPizzas(12) == "pizzas: 2, slices: 2")
    assert(howManyPizzas(8) == "pizzas: 1, slices: 0")
    assert(howManyPizzas(6) == "pizzas: 0, slices: 5")
    assert(howManyPizzas(0) == "pizzas: 0, slices: 0")
}
sampleTests()
print("passed!")
