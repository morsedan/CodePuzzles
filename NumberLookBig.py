def narcissistic(value):
    working_value = value
    digits = []
    total = 0
    while working_value > 0:
        digits.append(working_value % 10)
        working_value //= 10
    power = len(digits)
    for digit in digits:
        total += digit ** power

    return total == value

assert(narcissistic(7) == True)
assert(narcissistic(371) == True)
assert(narcissistic(122) == False)
assert(narcissistic(4887) == False)
print("tests passed!")
