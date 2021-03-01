def finder(arr1, arr2):
    elementDict1 = {}
    elementDict2 = {}

    for element in arr1:
        if element in elementDict1:
            elementDict1[element] += 1
        else:
            elementDict1[element] = 1

    for element in arr2:
        if element in elementDict2:
            elementDict2[element] += 1
        else:
            elementDict2[element] = 1

    for item in elementDict1:
        if item not in elementDict2:
            return item
        elif elementDict1[item] > elementDict2[item]:
            return item

    return -1




arr1 = [1,2,3,4,5,6,7]
arr2 = [3,7,2,1,4,6]
# print("here", finder(arr1,arr2))

import unittest
class TestFinder(unittest.TestCase):

    def test(self, sol):
        self.assertEqual(sol([5, 5, 7, 7], [5, 7, 7]), 5)
        self.assertEqual(sol([1, 2, 3, 4, 5, 6, 7], [3, 7, 2, 1, 4, 6]), 5)
        self.assertEqual(sol([9, 8, 7, 6, 5, 4, 3, 2, 1], [9, 8, 7, 5, 4, 3, 2, 1]), 6)
        print('ALL TEST CASES PASSED')


# Run test
t = TestFinder()
t.test(finder)