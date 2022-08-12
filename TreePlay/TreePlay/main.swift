import Foundation

class Tree {
    let value: Int
//    var children: [Tree] = []
    var leftChild: Tree?
    var rightChild: Tree?
    
    init(value: Int) {
        self.value = value
    }
    
    func findPathTo(value: Int) -> [Int] {
        return [self.value]
    }
}

/*
 
        5
       / \
      2   8
 
 
 */

let tree = Tree(value: 5)
tree.leftChild = Tree(value: 2)
tree.rightChild = Tree(value: 8)

assert(tree.findPathTo(value: 8) == [2, 8])// [2, 8]
