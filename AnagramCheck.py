"""

Anagram Check
Problem
Given two strings, check to see if they are anagrams. An anagram is when the two strings can be written using the exact same letters (so you can just rearrange the letters to get a different phrase or word).

For example:

"public relations" is an anagram of "crap built on lies."

"clint eastwood" is an anagram of "old west action"

Note: Ignore spaces and capitalization. So "d go" is an anagram of "God" and "dog" and "o d g".

Solution
Fill out your solution below:
"""

def anagram(s1, s2):
    pass

import unittest



class AnagramTest(unittest.TestCase):

    def test_annagram_check(self, sol):
        self.assertEqual(sol('go go go', 'gggooo'), True)
        self.assertEqual(sol('abc', 'cba'), True)
        self.assertEqual(sol('hi man', 'hi     man'), True)
        self.assertEqual(sol('aabbcc', 'aabbc'), False)
        self.assertEqual(sol('123', '1 2'), False)
        print("ALL TEST CASES PASSED")


# Run Tests
t = AnagramTest()
t.test_annagram_check(anagram)