import Foundation

/*
 https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
 
 Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.

 If target is not found in the array, return [-1, -1].

 You must write an algorithm with O(log n) runtime complexity.
 
 Example 1:

 Input: nums = [5,7,7,8,8,10], target = 8
 Output: [3,4]
 Example 2:

 Input: nums = [5,7,7,8,8,10], target = 6
 Output: [-1,-1]
 Example 3:

 Input: nums = [], target = 0
 Output: [-1,-1]
 */

class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count == 1 && nums[0] == target {
            return [0, 0]
        }
        
        return[findFirst(nums, target), findLast(nums, target)]
    }
    
    private func findFirst(_ nums: [Int], _ target: Int) -> Int {
        var result = -1
        
        var startIndex = 0
        var endIndex = nums.count - 1
        var currentIndex = (startIndex + endIndex) / 2
        
        while startIndex < (endIndex - 1) {
            let currentValue = nums[currentIndex]
            if currentValue < target {
                startIndex = currentIndex
                currentIndex = (startIndex + endIndex) / 2
            } else if currentValue == target {
                result = currentIndex
                endIndex = currentIndex
                currentIndex = (startIndex + endIndex) / 2
            } else {
                endIndex = currentIndex
                currentIndex = (startIndex + endIndex) / 2
            }
        }
        
        if startIndex < endIndex {
            if nums[startIndex] == target {
                result = startIndex
            }
        }
        
        return result
    }
    
    private func findLast(_ nums: [Int], _ target: Int) -> Int {
        var result = -1
        
        var startIndex = 0
        var endIndex = nums.count - 1
        var currentIndex = (startIndex + endIndex) / 2
        
        while startIndex < (endIndex - 1) {
            let currentValue = nums[currentIndex]
            if currentValue < target {
                startIndex = currentIndex
                currentIndex = (startIndex + endIndex) / 2
            } else if currentValue == target {
                result = currentIndex
                startIndex
                = currentIndex
                currentIndex = (startIndex + endIndex) / 2
            } else {
                endIndex = currentIndex
                currentIndex = (startIndex + endIndex) / 2
            }
        }
        
        if endIndex > startIndex {
            if nums[endIndex] == target {
                result = endIndex
            }
        }
        
        return result
    }
}

let s = Solution()
var nums = [5,7,7,8,8,10]
var target = 8
assert(s.searchRange(nums, target) == [3, 4])

target = 6
assert(s.searchRange(nums, target) == [-1, -1])

nums = []
target = 0
assert(s.searchRange(nums, target) == [-1, -1])

nums = [1]
target = 1
assert(s.searchRange(nums, target) == [0, 0], "got: \(s.searchRange(nums, target)), expected: [0,0]")

nums = [5,7,7,8,8,8,8,8,10]
target = 8
assert(s.searchRange(nums, target) == [3, 7])

nums = [5,7,7,8,8,8,8,8,8,8,8,8,10]
target = 8
assert(s.searchRange(nums, target) == [3, 11])

nums = [5,6,6,6,6,6,6,7,7,8,8,8,8,8,10]
target = 8
assert(s.searchRange(nums, target) == [9, 13])

nums = [8, 8, 8]
target = 8
assert(s.searchRange(nums, target) == [0, 2], "got: \(s.searchRange(nums, target)), expected: [0,2]")

nums = [8, 8]
target = 8
assert(s.searchRange(nums, target) == [0, 1], "got: \(s.searchRange(nums, target)), expected: [0,1]")


print("Tests passed!")
