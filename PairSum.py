"""
Problem
Given an integer array, output all the unique
pairs that sum up to a specific value k.

So the input:

pair_sum([1,3,2,2],4)

would return 2 pairs:

 (1,3)
 (2,2)

NOTE: FOR TESTING PURPOSES CHANGE YOUR
FUNCTION SO IT OUTPUTS THE NUMBER OF PAIRS
"""
import unittest

def pair_sum(arr, k):
    num_dict = {}
    result = []

    for number in arr:
        if number in num_dict:
            num_dict[number] += 1
        else:
            num_dict[number] = 1

    for number in arr:
        if k - number in num_dict:
            if number not in num_dict:
                continue

            if num_dict[number] >= 1:
                num_dict[number] -= 1
            if num_dict[number] == 0:
                del num_dict[number]

            if num_dict[k - number] >= 1:
                num_dict[k  - number] -= 1
            if num_dict[k  - number] == 0:
                del num_dict[k  - number]
            result.append((number, k-number))

    return len(result)

class PairSumTest(unittest.TestCase):

    def test_pair_sum(self, sol):

        self.assertEqual(sol([1, 2, 3, 1], 3), 1)
        self.assertEqual(sol([1, 3, 2, 2], 4), 2)
        self.assertEqual(sol([1, 9, 2, 8, 3, 7, 4, 6, 5, 5, 13, 14, 11, 13, -1], 10), 6)
        print('ALL TEST CASES PASSED')

# Run Tests
t = PairSumTest()
t.test_pair_sum(pair_sum)