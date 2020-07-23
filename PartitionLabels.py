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

        # currentPartitionHighestIndex = max(lettersDictionary[S[0]])
        currentPartitionLowestIndex = 0
        while True:

            currentPartitionHighestIndex = max(lettersDictionary[S[currentPartitionLowestIndex]])
            finishedLetters.add(currentPartitionLowestIndex)
            currentPartition = S[currentPartitionLowestIndex:currentPartitionHighestIndex]

            # "ababcbaca"
            # while True:
            for letter in currentPartition:
                if max(lettersDictionary[letter]) > currentPartitionHighestIndex and letter not in finishedLetters:
                    # currentPartition.a
                    currentPartitionHighestIndex = max(lettersDictionary[letter])

                finishedLetters.add(letter)

            partitions.append(S[currentPartitionLowestIndex:currentPartitionHighestIndex + 1])
                # if WHAT?:
                #     break

            if currentPartitionHighestIndex == len(S) - 1:
                break
            currentPartitionLowestIndex = currentPartitionHighestIndex + 1
        return [len(partition) for partition in partitions]




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