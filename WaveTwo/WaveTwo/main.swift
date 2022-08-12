import Foundation

func wave(_ y: String) -> [String] {
    var workingString = y
    var result: [String] = []
    for index in workingString.indices {
//        workingString[index] = workingString.replaceSubrange(index...index+1, with: workingString[index].uppercased())
        workingString[index] = Character(workingString[index].uppercased())
    }
    return [String]()
}

var actual = wave("hello")
assert(actual == ["Hello", "hEllo", "heLlo", "helLo", "hellO"])
actual = wave("codewars")
assert(actual == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"])
actual = wave("")
assert(actual == [])
actual = wave("two words")
assert(actual == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"])
actual = wave(" gap ")
assert(actual == [" Gap ", " gAp ", " gaP "])
print("Profit!")
