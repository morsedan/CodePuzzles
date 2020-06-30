class Solution:
    def minDistance(self, word1: str, word2: str) -> int:
        counter = 0
        pointer1 = 0
        pointer2 = 0
        common_string = ""


        while word1 != word2:
            if word1[pointer1] not in word2:
                print("inside")
                word1 = word1[:pointer1] + word1[pointer1 + 1:]
                continue
            print("hi")


            print(word1, word2)
            break


        return counter

"""
look at first letter of each
if they're the same, look at second
otherwise, look at second to see which is the same as first of other
"""

words1 = ["sea", "eat"]
words2 = ["iiiiiiiio", "ojjjjjjjj"]

s = Solution()

words = words1
print(s.minDistance(words[0], words[1]))

words = words2
print(s.minDistance(words[0], words[1]))

words = words1
print(s.minDistance(words[0], words[1]))

words = words1
print(s.minDistance(words[0], words[1]))