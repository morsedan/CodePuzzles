import Foundation

var numbers: [Int] = []
for i in 1...10_000_000 {
    numbers.append(i)
}
numbers.append(4)

func firstDuplicate1(nums: [Int]) -> Int {
    var visited: [Int] = [nums[0]]
    for i in 1..<nums.count {
        print(i)
        for y in 0..<visited.count {
            if nums[i] == visited[y] {
                return nums[i]
            } else {
                visited.append(nums[i])
            }
        }
    }
    return -1
}

func firstDuplicate(nums: [Int]) -> Int {
    var visited: Set<Int> = []
    for index in 0..<nums.count {
        print(index)
        if visited.contains(nums[index]) {
            return nums[index]
        } else {
            visited.insert(nums[index])
        }
    }
    return -1
}


assert(firstDuplicate(nums: numbers) == 4)
print("Tests passed!")
