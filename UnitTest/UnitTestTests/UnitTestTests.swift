//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by ああ on 2020/05/20.
//  Copyright © 2020 taki. All rights reserved.
//

import XCTest
@testable import UnitTest

class UnitTestTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.viewController = storyboard.instantiateInitialViewController() as? ViewController
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        viewController.loadViewIfNeeded()
        let subClass = viewController.subClass
        let result = subClass?.multiply(num1: 7, num2: 28)
        XCTAssertEqual(result, 196)
        
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            viewController.loadViewIfNeeded()
            let subClass = viewController.subClass
            let result = subClass?.multiply(num1: 7, num2: 28)
            XCTAssertEqual(result, 196)
        }
        
    }
    func testAdd() {
        XCTAssertEqual(viewController.add(x: 1, y: 2), 3, "1+2=3であること")
    }
}
