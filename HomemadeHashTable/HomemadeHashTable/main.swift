//
//  main.swift
//  HomemadeHashTable
//
//  Created by morse on 2/7/21.
//

import Foundation

class HashTable {
    var storage: [Any?] = []
    var capacity: Int
    
    init(capacity: Int = 8) {
        self.capacity = capacity
        
        for _ in 0..<capacity {
            storage.append(nil)
        }
    }
    
    func insert<T: Hashable>(key: T, value: Any) {
        let hash = abs(key.hashValue)
        let index = hash % capacity
        storage[index] = value
        print(index)
    }
    
    func retreive<T: Hashable>(key: T) -> Any? {
        let hash = key.hashValue
        let index = hash % capacity
        print(index)
        return nil
    }
}

let h = HashTable()
h.insert(key: "Texas", value: "Dallas")
h.retreive(key: "Texas")
print(h.storage)
