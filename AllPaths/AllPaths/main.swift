import Foundation

struct Grid {
    let width: Int
    let height: Int
}

func getAllPathsThroughGrid(_ grid: Grid) -> [[Int]] {
    var paths: [[Int]] = []
    
    var partialPaths: [[Int]] = [[0,0]]
    var currentPath: [Int]
    
    while !partialPaths.isEmpty {
        currentPath = partialPaths.removeLast()
        let x = currentPath[currentPath.count - 2]
        let y = currentPath[currentPath.count - 1]
        
        if x == grid.width - 1 && y == grid.height - 1 {
            if !paths.contains(currentPath) {
                paths.append(currentPath)
            }
        } else {
            if x < grid.width - 1 {
                var newPath = currentPath
                newPath.append(x + 1)
                newPath.append(y)
                partialPaths.append(newPath)
            }
            if y < grid.height - 1 {
                var newPath = currentPath
                newPath.append(x)
                newPath.append(y + 1)
                partialPaths.append(newPath)
            }
        }
    }
    for path in paths {
        print(path)
    }
    return paths
}

/*
[
    [*, *]
]
 
remove a path from partialPaths
0,0
 if x == width - 1 and y == height - 1
    add path to paths
 else
     if x < (width - 1)
        add (x+1, y) to partial paths
     if y < (height -1)
        add x, y+1 to partial paths

Once there are no more partial paths we will have all the paths there are in paths so we're done
 
 
[
    [*, *]
    [*, *]
]
*/
assert(getAllPathsThroughGrid(Grid(width: 2, height: 1)) == [[0,0, 1,0]])
assert(getAllPathsThroughGrid(Grid(width: 8, height: 1)) == [[0,0,1, 0,2, 0,3, 0,4, 0,5, 0,6, 0,7,0]])
assert(getAllPathsThroughGrid(Grid(width: 1, height: 2)) == [[0,0, 0,1]])
assert(getAllPathsThroughGrid(Grid(width: 1, height: 8)) == [[0,0, 0,1, 0,2, 0,3, 0,4, 0,5, 0,6, 0,7]])

assert(getAllPathsThroughGrid(Grid(width: 2, height: 2)) == [[0,0, 0,1, 1,1], [0,0, 1,0, 1,1]])
assert(getAllPathsThroughGrid(Grid(width: 3, height: 3)) == [
    [0,0, 0,1, 0,2, 1,2, 2,2],
    [0,0, 0,1, 1,1, 1,2, 2,2],
    [0,0, 0,1, 1,1, 2,1, 2,2],
    [0,0, 1,0, 1,1, 1,2, 2,2],
    [0,0, 1,0, 1,1, 2,1, 2,2],
    [0,0, 1,0, 2,0, 2,1, 2,2]
])
getAllPathsThroughGrid(Grid(width: 5, height: 5))
getAllPathsThroughGrid(Grid(width: 4, height: 3))

print("Tests passed!")
