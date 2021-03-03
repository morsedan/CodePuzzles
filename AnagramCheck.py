"""

Anagram Check
Problem
Given two strings, check to see if they are anagrams.
An anagram is when the two strings can be written using
the exact same letters (so you can just rearrange the
letters to get a different phrase or word).

For example:

"public relations" is an anagram of "crap built on lies."

"clint eastwood" is an anagram of "old west action"

Note: Ignore spaces and capitalization. So "d go"
is an anagram of "God" and "dog" and "o d g".

Solution
Fill out your solution below:
"""

def anagram(s1, s2):
    """
    O(n)
    """
    letter_dict = {}
    for character in s1.lower().replace(' ', ''):
        if character not in letter_dict:
            letter_dict[character] = 1
        else:
            letter_dict[character] += 1
    for character in s2.lower().replace(' ', ''):
        if character not in letter_dict or letter_dict[character] == 0:
            return False
        else:
            letter_dict[character] -= 1

    for item in letter_dict:
        if letter_dict[item] != 0:
            return False

    return True
    """
    O(n^^2)
    """
    # for character in s1.lower().replace(" ", ""):
    #     if character in s2.lower():
    #         for index, letter in enumerate(s2.lower().replace(" ", "")):
    #             if letter == character:
    #                 s2 = s2[:index] + s2[index + 1:]
    #                 break
    #     else:
    #         return False
    # return True

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