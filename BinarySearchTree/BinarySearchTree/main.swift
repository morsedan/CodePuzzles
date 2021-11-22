import Foundation

class BinarySearchTree {
    var value: Int
    var left: BinarySearchTree?
    var right: BinarySearchTree?
    var parent: BinarySearchTree?
    
    init(value: Int) {
        self.value = value
    }
}

extension BinarySearchTree {
    func insert(value: Int) {
        insert(value: value, parent: self)
    }
    
    private func insert(value: Int, parent: BinarySearchTree) {
        if value < self.value {
            if let left = left {
                left.insert(value: value, parent: self)
            } else {
                left = BinarySearchTree(value: value)
                left?.parent = self
            }
        } else {
            if let right = right {
                right.insert(value: value, parent: self)
            } else  {
                right = BinarySearchTree(value: value)
                right?.parent = self
            }
        }
    }
}

extension BinarySearchTree: CustomStringConvertible {
    var description: String {
        var result = ""
        
        if let left = left {
            result += "\(left.description) <- "
        }
        
        result += "\(value)"
        
        if let right = right {
            result += " -> \(right.description)"
        }
        
        return result
    }
}

let tree = BinarySearchTree(value: 8)

/*
        8
       / \
      6   9
       \   \
        7   10
 */
tree.insert(value: 6)
tree.insert(value: 9)
tree.insert(value: 10)
tree.insert(value: 7)

print(tree)
