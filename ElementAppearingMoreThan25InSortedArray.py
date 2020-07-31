class Solution:
    def findSpecialInteger(self, arr) -> int:
        if len(arr) < 4:
            return arr[0]
        interval = len(arr) // 4
        for i in range(len(arr) - 1):
            if arr[i] == arr[i+interval]:
                return arr[i]
            # print(arr[i+interval])
        # checked = set()
        # # print(arrSet)
        # for number in arr:
        #     if number in checked:
        #         continue
        #     print(number, arr.count(number)/len(arr))
        #     checked.add(number)
        #     if arr.count(number) / len(arr) > 0.25:
        #         return number

        # countDict = {}
        #     if number in countDict:
        #         countDict[number] += 1
        #     else:
        #         countDict[number] = 1
        #     print(countDict[number] / len(arr))
        #     if countDict[number] / len(arr) > 0.25:
        #         return number
        # for number in arr:

s = Solution()

test1 = [1,2,2,6,6,6,6,7,10]
print(s.findSpecialInteger(test1))
test2 = [1,2,3,3]
print(s.findSpecialInteger(test2))
'''
walk through arr.
    if number in dict:
        increase by 1
    otherwise:
        add it at 1
    
    if added num > 25% of len(arr):
        return num

'''
