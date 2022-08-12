import Foundation

func checkValidString(s: String) -> Bool {
    var leftParenCount = 0
    var leftWildCount = 0
    var wildCount = 0
    
    for character in s {
        if character == "(" {
            leftParenCount += 1
        } else if character == "*" {
            if leftParenCount == 0 {
                leftWildCount += 1
            } else {
                wildCount += 1
            }
        } else  {
            if leftParenCount >= 1 {
                leftParenCount -= 1
                if leftParenCount < 0 {
                    return false
                }
            } else if leftWildCount >= 1 {
                leftWildCount -= 1
                if leftWildCount < 0 {
                    return false
                }
            } else if wildCount >= 1 {
                wildCount -= 1
                if wildCount < 0 {
                    return false
                }
            }
        }
        
        print(character, leftParenCount, leftWildCount, wildCount)
    }
    //    print(leftParenCount, leftWildCount, wildCount)
    return wildCount >= leftParenCount
}

var s = "(((((*(()((((*((**(((()()*)()()()*((((**)())*)*)))))))(())(()))())((*()()(((()((()*(())*(()**)()(())"
/*
 left ((((((((((((((((
 leftWild
 wild *********
 */
//
//print(checkValidString(s: s))
s = "(((((*(()((((*((**(((()()*)()()()*((((**)())*)*)))))))(())(()))())((*()()(((()((()*(())*(()**)()(())"
//
print(checkValidString(s: s))
s = "((*)))*"
print(checkValidString(s: s))
s = "*((*"
//print(checkValidString(s: s))

/*
 if ( {
 left += 1
 } else if * {
 if left == 0 {
 leftWild += 1
 } else {
 wild += 1
 {
 } else if ) {
 
 }
 
 */
