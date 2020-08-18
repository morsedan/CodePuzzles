def factorial(number):

    def go(number, accumulator=1):
        # print(number, accumulator)
        if number == 1:
            return accumulator
        # print(go(number-1, accumulator*number))
        return go(number-1, accumulator*number)


    return go(number)

def rec_factorial(number):
    if number <= 2:
        return number
    print()
    return number * factorial(number - 1)

    # go(number)

# print(factorial(20))



# print(rec_factorial(200))

def rec_fib(number):
    if number <= 2:
        return number
    return fib(number - 1) + fib(number - 2)

def fib(number):
    fibs = [0,1]
    count = 0
    while count < number:
        fibs[0], fibs[1] = fibs[1], fibs[0] + fibs[1]
        count += 1

    return fibs[1]


# print(rec_fib(200))
print(fib(0))