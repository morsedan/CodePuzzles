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
    var start = str.index(after: str.startIndex)
    var end = str.index(start, offsetBy: 2)
    
    let red = str.substring(with: start..<end)
    start = end; end = str.index(end, offsetBy: 2)
    let green = str.substring(with: start..<end)
    start = end; end = str.index(end, offsetBy: 2)
    let blue = str.substring(with: start..<end)
    
    return RGB(Int(red, radix: 16)!, Int(green, radix: 16)!, Int(blue, radix: 16)!)
}

//func hexStringToRGB(_ str:String) -> RGB {
//    var colorString = str.lowercased().dropFirst()
//
//    let redString = String(colorString.prefix(2))
//    let red = Int(redString, radix: 16) ?? 0
//    colorString = colorString.dropFirst().dropFirst()
//
//    let greenString = String(colorString.prefix(2))
//    let green = Int(greenString, radix: 16) ?? 0
//    colorString = colorString.dropFirst().dropFirst()
//
//    let blueString = String(colorString.prefix(2))
//    let blue = Int(blueString, radix: 16) ?? 0
//    colorString = colorString.dropFirst().dropFirst()
//
//    return RGB(red, green, blue)
//}

func testHexStringToRGB() {
    assert(hexStringToRGB("#FF9933") == RGB(255, 153, 51))
    assert(hexStringToRGB("#beaded") == RGB(190, 173, 237))
    assert(hexStringToRGB("#000000") == RGB(0, 0, 0))
    assert(hexStringToRGB("#111111") == RGB(17, 17, 17))
    assert(hexStringToRGB("#Fa3456") == RGB(250, 52, 86))
}

testHexStringToRGB()
print("passed!")
