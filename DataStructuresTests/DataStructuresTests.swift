//
//  DataStructuresTests.swift
//  DataStructuresTests
//
//  Created by Artem Shyianov on 1/30/17.
//  Copyright © 2017 Artem Shyianov. All rights reserved.
//

import XCTest
@testable import DataStructures

class DataStructuresTests: XCTestCase {
    
    var stack: IDStack<IDNode<String>>!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let stack = IDStack<IDNode<String>>()
        self.stack = stack
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        stack.push(element: "One")
        stack.push(element: "Two")
        stack.push(element: "Three")
        stack.push(element: "Four")
        stack.push(element: "Five")
        
        XCTAssertEqual("Five", stack.popElement())
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
