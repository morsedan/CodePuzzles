def balancedBrackets(string):
    # Write your code here
    openingBrackets = ["[", "(", "{", "|"]
    closingBrackets = ["]", ")", "}", "|"]
    opening = []
    pipeCount = 0
    for character in string:
        if character == "|":
            if pipeCount % 2 == 0:
                opening.append(character)
            else:
                if opening.pop() != "|":
                    return False
            pipeCount += 1
        elif character in openingBrackets:
            opening.append(character)
        elif character in closingBrackets:
            if character == "]" and opening[-1] != "[":
                return False
            elif character == ")" and opening[-1] != "(":
                return False
            elif character == "}" and opening[-1] != "{":
                return False
            opening.pop()
    if len(opening) > 0:
        return False
    return True

case1 = "[|]|"
case2 = "foo(bar)baz"
case4 = "I (wa)n{t to buy a on}esie[…] b(u{[t] kno}w it) won’t suit me."
# (){}[]({[]})
# ({[({[, )}]]})

case7 = "He ran| |out of money, so he {| had} to stop playing | poker."
print(balancedBrackets(case4))
