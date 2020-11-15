//
//  main.swift
//  HexToRGB
//
//  Created by morse on 11/15/20.
//

import Foundation

struct RGB: CustomStringConvertible, Equatable {
    var r:Int
    var g:Int
    var b:Int
    init(_ r:Int, _ g:Int, _ b:Int) {
        self.r = r
        self.g = g
        self.b = b
    }
    static func ==(left:RGB, right:RGB) -> Bool {
        return left.r == right.r && left.g == right.g && left.b == right.b
    }
    var description: String {
        return "{R:\(r), G:\(g), B:\(b)}"
    }
}

func hexStringToRGB(_ str:String) -> RGB {
    var colorString = str.lowercased().dropFirst()
    
    let redString = String(colorString.prefix(2))
    colorString = colorString.dropFirst().dropFirst()
    let red = stringToInt(redString)
    let greenString = String(colorString.prefix(2))
    colorString = colorString.dropFirst().dropFirst()
    let green = stringToInt(greenString)
    let blueString = String(colorString.prefix(2))
    colorString = colorString.dropFirst().dropFirst()
    let blue = stringToInt(blueString)
    return RGB(red, green, blue)
}

func stringToInt(_ hexString: String) -> Int {
    var numbers: [Int] = []
    
    for character in hexString {
        switch character {
        case "1": numbers.append(1)
        case "2": numbers.append(2)
        case "3": numbers.append(3)
        case "4": numbers.append(4)
        case "5": numbers.append(5)
        case "6": numbers.append(6)
        case "7": numbers.append(7)
        case "8": numbers.append(8)
        case "9": numbers.append(9)
        case "a": numbers.append(10)
        case "b": numbers.append(11)
        case "c": numbers.append(12)
        case "d": numbers.append(13)
        case "e": numbers.append(14)
        case "f": numbers.append(15)
        default: numbers.append(0)
        }
    }
    
    return numbers[0] * 16 + numbers[1]
}

func testHexStringToRGB() {
    assert(hexStringToRGB("#FF9933") == RGB(255, 153, 51))
    assert(hexStringToRGB("#beaded") == RGB(190, 173, 237))
    assert(hexStringToRGB("#000000") == RGB(0, 0, 0))
    assert(hexStringToRGB("#111111") == RGB(17, 17, 17))
    assert(hexStringToRGB("#Fa3456") == RGB(250, 52, 86))
}

testHexStringToRGB()
print("passed!")
