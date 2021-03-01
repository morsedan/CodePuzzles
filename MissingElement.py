def finder(arr1, arr2):
    pass



arr1 = [1,2,3,4,5,6,7]
arr2 = [3,7,2,1,4,6]
print(finder(arr1,arr2))

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