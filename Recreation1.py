'''
42's divisors 1,2,3,6,7,21,42 squared
add them
see if result is a square number

all ints between n & m where this is true,

[[number, and square of divisors][42, 2500]]

find divisors, for num where % == 0

square them

add them

check if square
    put into results


[[42, 2500], [246, 84100]] Test.assert_equals(list_squared(42, 250), [[42, 2500], [246, 84100]])

math div gives divisor and remainder
'''
from math import sqrt

cache = {}

def list_squared(first, last):
    result = []
    for num in range(first, last + 1):
        if num in cache:
            result.append(cache[num])
            print("In the cache!!!")
            continue
        divisor_squares = get_divisors_squares(num)
        div_sum = sum(divisor_squares)
        if check_if_square(div_sum):
            cache[num] = [num, div_sum]
            result.append([num, div_sum])
        else:
            cache[num] = None

    return result

def get_divisors_squares(number):
    divisors = set()
    divisors.add(1)
    divisors.add(number)
    for num in range(2,number + 1 // 2):
        if number % num == 0:
            divisors.add(num)
    squares = [num * num for num in divisors]
    return squares

def check_if_square(number):
    return sqrt(number) // 1 == sqrt(number)

# print(list_squared(1, 10000))
# print(list_squared(1, 10000))
# print(list_squared(1, 10000))
# print(list_squared(1, 10000))
# print(list_squared(1, 10000))

def num_sq_cube(number):
    yield number
    yield number * number
    yield number * number * number


for thing in num_sq_cube(2):
    print(thing)