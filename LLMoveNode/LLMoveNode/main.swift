//
//  main.swift
//  LLMoveNode
//
//  Created by morse on 9/26/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

struct Context {
    var source:Node?
    var dest:Node?
}

func moveNode(source:Node?, dest:Node?) throws -> Context? {
    
}

class SolutionTest: XCTestCase {
    static var allTests = [
        ("testMoveNode", testMoveNode),
        ("testMoveNodeWithNilSource", testMoveNodeWithNilSource),
        ("testMoveNodeWithNilDest", testMoveNodeWithNilDest),
        ("testMoveNodeWithSourceAndDestNil", testMoveNodeWithSourceAndDestNil),
    ]

    func testMoveNode() {
        let source:Node? = buildOneTwoThree()
        let dest:Node? = buildListFromArray([4, 5, 6])
        let context:Context? = try! moveNode(source: source, dest: dest)
        XCTAssertTrue(linkedListsEqual(first: context?.source, second: buildListFromArray([2, 3])))
        XCTAssertTrue(linkedListsEqual(first: context?.dest, second: buildListFromArray([1, 4, 5, 6])))
    }
    
    func testMoveNodeWithNilSource() {
        let source:Node? = nil
        let dest:Node? = buildListFromArray([4, 5, 6])
        XCTAssertThrowsError(try moveNode(source: source, dest: dest))
    }
    
    func testMoveNodeWithNilDest() {
        let source:Node? = buildOneTwoThree()
        let dest:Node? = nil
        let context:Context? = try! moveNode(source: source, dest: dest)
        XCTAssertTrue(linkedListsEqual(first: context?.source, second: buildListFromArray([2, 3])))
        XCTAssertTrue(linkedListsEqual(first: context?.dest, second: buildListFromArray([1])))
    }
    
    func testMoveNodeWithSourceAndDestNil() {
        let source:Node? = nil
        let dest:Node? = nil
        XCTAssertThrowsError(try moveNode(source: source, dest: dest))
    }
}
