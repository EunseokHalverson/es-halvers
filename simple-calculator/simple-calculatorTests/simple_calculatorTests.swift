//
//  simple_calculatorTests.swift
//  simple-calculatorTests
//
//  Created by Eunseok on 2017. 11. 23..
//  Copyright © 2017년 Eunseok. All rights reserved.
//

import XCTest
@testable import simple_calculator

class simple_calculatorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testHours(){
        XCTAssert(Wage.getHours(wage:25, price:100) == 4)
    }
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
