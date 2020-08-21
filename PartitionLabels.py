# https://leetcode.com/problems/partition-labels/submissions/

class Solution:
    def partitionLabels(self, S: str) -> [int]:
        if len(S) == 0:
            return [0]

        lettersDictionary = {}
        partitions = []
        finishedLetters = set()

        for i in range(len(S)):
            letter = S[i]
            if letter not in lettersDictionary:
                lettersDictionary[letter] = [i]
            else:
                lettersDictionary[letter].append(i)

        currentPartitionLowestIndex = 0
        while True:
            currentPartitionHighestIndex = max(lettersDictionary[S[currentPartitionLowestIndex]])
            finishedLetters.add(currentPartitionLowestIndex)
            currentPartition = S[currentPartitionLowestIndex:currentPartitionHighestIndex]
            lowestIndexToCheck = currentPartitionLowestIndex

            # "ababcbaca"
            while True:
                expanded = False
                for letter in currentPartition:  # for letter in currentPartition[lowestIndexToCheck:currentPartitionHighestIndex]:
                    if max(lettersDictionary[letter]) > currentPartitionHighestIndex and letter not in finishedLetters:

                        currentPartitionHighestIndex = max(lettersDictionary[letter])
                        expanded = True

                    currentPartition = S[currentPartitionLowestIndex:currentPartitionHighestIndex]
                    # lowestIndexToCheck = currentPartitionHighestIndex
                    finishedLetters.add(letter)

                if not expanded:
                    break

            partitions.append(S[currentPartitionLowestIndex:currentPartitionHighestIndex + 1])

            if currentPartitionHighestIndex == len(S) - 1:
                break
            currentPartitionLowestIndex = currentPartitionHighestIndex + 1
        return [len(partition) for partition in partitions]


# class TheSolution(object):
#     def partitionLabels(self, S):
#         last = {c: i for i, c in enumerate(S)}
#         j = anchor = 0
#         ans = []
#         for i, c in enumerate(S):
#             j = max(j, last[c])
#             if i == j:
#                 ans.append(i - anchor + 1)
#                 anchor = i + 1
#
#         return ans

class MySolution:
    def partitionLabels(self, S: str) -> [int]:



s = Solution()

test1 = "ababcbacadefegdehijhklij"
test2 = ""
test3 = "qiejxqfnqceocmy"
'''
make a dictionary with letter:list of indices
get highest index for first letter, 
get highest index for all letters in there,
keep doing this until you have the highest index in there

if it's higher than the highest for any letter, that can be a break so
    set up the first partition
    add everything that's in that partition to a set of finished letters
    remove that much of the string

'''


print(s.partitionLabels(test1))
print(s.partitionLabels(test2))
print(s.partitionLabels(test3))