import math

def is_prime(num):

    if num <= 1:
        return False

    for i in range(2, int(math.sqrt(num) + 1)):

        if num % i == 0:
            return False

    return True

print(is_prime(3), True)
print(is_prime(6), False)
print(is_prime(4), False)
print(is_prime(8), False)
print(is_prime(9), False)
print(is_prime(45), False)
print(is_prime(-5), False)
print(is_prime(-8), False)
print(is_prime(-41), False)

print(is_prime(3), True)
print(is_prime(5), True)
print(is_prime(7), True)
print(is_prime(41), True)
print(is_prime(5099), True)
