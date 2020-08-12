"""
N cubes into a building n^3, (n-1)^3 until 1 unit^3, from volume determine number of cubes

Volume -> number, -1 if not possible

1, 8, 27...

sqrt of

36 =
sqrt of total = n(n+1)/2
2*sqrt of total  = n(n+1) = n**2 + n

might be

4**3 = 64
8**2 = 64

3**3 = 36
6**2 = 36
"""

from math import sqrt


def num_cubes(volume):
    estimate = sqrt(2 * sqrt(volume)) // 1
    if (estimate * (estimate + 1) / 2) ** 2 == volume:
        return int(estimate)

    return -1


#     top_floor = 1
#     while volume > 0:
#         volume -= top_floor ** 3
#         top_floor += 1

#     if volume < 0:
#         top_floor = 0

#     return top_floor - 1

print(num_cubes(36))  # 3
print(num_cubes(37))  # -1
print(num_cubes(100))  # 4
print(num_cubes(1))
print(num_cubes(9))
x = 1071225
print(num_cubes(x))

