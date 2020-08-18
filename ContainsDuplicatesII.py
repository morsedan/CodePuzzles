'''
starting at k'th element, look back k elements
if current == k'th return true

otherwise return false
'''


class Solution:
    def containsNearbyDuplicate(self, nums, k: int) -> bool:
        if k >= len(nums):
            return len(set(nums)) < len(nums)
        if k == 0:
            return False

        current = set(nums[:k])
        for i in range(k, len(nums)):
            if nums[i] in current:
                return True
            else:
                current.remove(nums[i-k])
                current.add(nums[i])
        return False



        # Takes too long
        # if k >= len(nums):
        #     return len(set(nums)) < len(nums)
        # for i in range(k, len(nums)):
        #     if len(set(nums[i-k:i+1])) < k + 1:
        #         return True
        # return False

s = Solution()

arr = [1,2,3,1]
number = 3
print(True, s.containsNearbyDuplicate(arr, number))

arr = [1,0,1,1]
number = 1
print(True, s.containsNearbyDuplicate(arr, number))

arr = [1,2,3,1,2,3]
number = 2
print(False, s.containsNearbyDuplicate(arr, number))

arr = []
number = 2
print(False, s.containsNearbyDuplicate(arr, number))

arr = []
number = 0
print(False, s.containsNearbyDuplicate(arr, number))

arr = [99,99]
number = 2
print(True, s.containsNearbyDuplicate(arr, number))

arr = [1,2,1]
number = 0
print(True, s.containsNearbyDuplicate(arr, number))