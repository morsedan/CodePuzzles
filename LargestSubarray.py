def large_cont_sum(arr):
    if arr == []:
        return 0

    largest_sum = arr[0]
    largest_start = 0
    largest_end = 1

    current_start = 0
    current_end = 0

    while arr[current_start] < 0:
        current_start += 1
        largest_start = current_start
        current_end += 1
        largest_end = current_end
        largest_sum = arr[largest_start]

    while current_end < len(arr):
        new_sum = sum(arr[current_start:current_end])
        if new_sum > largest_sum:
            largest_sum = new_sum
            largest_start = current_start
            largest_end = current_end

        if new_sum < 0:
            current_start = current_end
            current_end = current_start + 1
        else:
            current_end += 1

    if largest_start == largest_end:
        return largest_sum
    return sum(arr[largest_start:largest_end])

import unittest
class LargeContTest(unittest.TestCase):
    def test(self, sol):
        self.assertEqual(sol([1, 2, -1, 3, 4, -1]), 9)
        self.assertEqual(sol([1, 2, -1, 3, 4, 10, 10, -10, -1]), 29)
        self.assertEqual(sol([1, 2, -1, 3, -100, 4, 10, 10, -10, -1]), 24)
        self.assertEqual(sol([-1, 1]), 1)
        self.assertEqual(sol([-1, -2, 1, -4]), 1)
        print('ALL TEST CASES PASSED')


# Run Test
t = LargeContTest()
t.test(large_cont_sum)
