//  [SubrectangleQueries](https://leetcode.com/problems/subrectangle-queries/)

import Darwin

class SubrectangleQueries {
    var rectangle: [[Int]]

    init(_ rectangle: [[Int]]) {
        self.rectangle = rectangle
    }
    
    func updateSubrectangle(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int, _ newValue: Int) {
        for y in col1...col2 {
            for x in row1...row2 {
                rectangle[x][y] = newValue
            }
        }
    }
    
    func getValue(_ row: Int, _ col: Int) -> Int {
        return rectangle[row][col]
    }
    
    func printRectangle() {
        for row in rectangle {
            print(row)
        }
        
        var end = " "
        for _ in 0..<rectangle[0].count {
            end += "-  "
        }
        print(end)
    }
}

let nums = [0, 0, 0, 0, 2, 0, 1, 1, 9]
var divisor = Int(pow(10.0, Double(nums.count)))
var result = 0
for num in nums {
    divisor /= 10
    result += num * divisor
}
print(result)

//var rectangle = [[1,2,1],[4,3,4],[3,2,1],[1,1,1]]
//var obj = SubrectangleQueries(rectangle)
//
//obj.printRectangle()
//assert(obj.getValue(0, 2) == 1)
//obj.updateSubrectangle(0, 0, 3, 2, 5)
//obj.printRectangle()
//assert(obj.getValue(0, 2) == 5)
//assert(obj.getValue(3, 1) == 5)
//obj.updateSubrectangle(3, 0, 3, 2, 10)
//assert(obj.getValue(3, 1) == 10)
//assert(obj.getValue(0, 2) == 5)
//obj.printRectangle()
//
//rectangle = [[1,1,1],[2,2,2],[3,3,3]]
//obj = SubrectangleQueries(rectangle)
//
//obj.printRectangle()
//assert(obj.getValue(0, 0) == 1)
//obj.updateSubrectangle(0, 0, 2, 2, 100)
//obj.printRectangle()
//assert(obj.getValue(0, 0) == 100)
//assert(obj.getValue(2, 2) == 100)
//obj.updateSubrectangle(1, 1, 2, 2, 20)
//assert(obj.getValue(2, 2) == 20)
//obj.printRectangle()
//
//print("Tests passed!")
/*
 ["SubrectangleQueries","getValue","updateSubrectangle","getValue","getValue","updateSubrectangle","getValue","getValue"]
 [[[[1,2,1],[4,3,4],[3,2,1],[1,1,1]]],[0,2],
 [0,0,3,2,5],[0,2],[3,1],
 [3,0,3,2,10],[3,1],[0,2]]
 Output
 [null,1,null,5,5,null,10,5]
 Explanation
 SubrectangleQueries subrectangleQueries = new SubrectangleQueries([[1,2,1],[4,3,4],[3,2,1],[1,1,1]]);
 // The initial rectangle (4x3) looks like:
 // 1 2 1
 // 4 3 4
 // 3 2 1
 // 1 1 1
 subrectangleQueries.getValue(0, 2); // return 1
 subrectangleQueries.updateSubrectangle(0, 0, 3, 2, 5);
 // After this update the rectangle looks like:
 // 5 5 5
 // 5 5 5
 // 5 5 5
 // 5 5 5
 subrectangleQueries.getValue(0, 2); // return 5
 subrectangleQueries.getValue(3, 1); // return 5
 subrectangleQueries.updateSubrectangle(3, 0, 3, 2, 10);
 // After this update the rectangle looks like:
 // 5   5   5
 // 5   5   5
 // 5   5   5
 // 10  10  10
 subrectangleQueries.getValue(3, 1); // return 10
 subrectangleQueries.getValue(0, 2); // return 5
 
 ["SubrectangleQueries","getValue","updateSubrectangle","getValue","getValue","updateSubrectangle","getValue"]
 [[[[1,1,1],[2,2,2],[3,3,3]]],[0,0],[0,0,2,2,100],[0,0],[2,2],[1,1,2,2,20],[2,2]]
 Output
 [null,1,null,100,100,null,20]
 Explanation
 SubrectangleQueries subrectangleQueries = new SubrectangleQueries([[1,1,1],[2,2,2],[3,3,3]]);
 subrectangleQueries.getValue(0, 0); // return 1
 subrectangleQueries.updateSubrectangle(0, 0, 2, 2, 100);
 subrectangleQueries.getValue(0, 0); // return 100
 subrectangleQueries.getValue(2, 2); // return 100
 subrectangleQueries.updateSubrectangle(1, 1, 2, 2, 20);
 subrectangleQueries.getValue(2, 2); // return 20
 */
