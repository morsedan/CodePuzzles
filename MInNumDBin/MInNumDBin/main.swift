import Foundation

/*
 https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/
 
 A decimal number is called deci-binary if each of its digits is either 0 or 1 without any leading zeros. For example, 101 and 1100 are deci-binary, while 112 and 3001 are not.

 Given a string n that represents a positive decimal integer, return the minimum number of positive deci-binary numbers needed so that they sum up to n.
 */

class Solution {
    func minPartitions(_ n: String) -> Int {
        var max = 0
        let numberStrings: [Character] = Array(n)
        for numberString in numberStrings {
            if let digit = Int(String(numberString)) {
                if digit == 9 {
                    return 9
                }
                else if digit > max {
                    max = digit
                }
            }
        }
        return max
    }
}

let s = Solution()
var n = "32"
assert(s.minPartitions(n) == 3)

n = "82734"
assert(s.minPartitions(n) == 8)

n = "2734620983070918234627346209830709182346273462098307091823462734620983070918234627346209830709182346273462098307091823462734620983070918234627346209830709182346273462098307091823462734620983070918234627346209830709182346"
assert(s.minPartitions(n) == 9)
print("Tests passed!")
