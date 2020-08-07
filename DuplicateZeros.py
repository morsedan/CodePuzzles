class Solution:
    def duplicateZeros(self, arr):
        """
        Do not return anything, modify arr in-place instead.
        """
        did_modify = False
        for i in range(len(arr)):
            if did_modify:
                did_modify = False
                continue
            if arr[i] == 0:
                arr.pop()
                arr.insert(i + 1, 0)
                did_modify = True

arr = [1,0,2,3,0,4,5,0]
s = Solution()
s.duplicateZeros(arr)
print(arr)

arr = []
s.duplicateZeros(arr)
print(arr)

arr = [0,0,0,0,0,0,0]
s.duplicateZeros(arr)
print(arr)