//
//  6-DependencyInjection-Interface-1-Tests.swift
//  13WaysOfLookingAtATurtleTests
//
//  Created by Christian Leovido on 25/04/2020.
//  Copyright © 2020 Christian Leovido. All rights reserved.
//

import XCTest
@testable import _3WaysOfLookingAtATurtle

class DependencyInjectionInterface1Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {

        let iTurtle = TurtleImplementationOO.normalSize()  // an ITurtle type
        let api = TurtleApiLayerOO.TurtleApi(iTurtle: iTurtle)
        TurtleApiClientOO.drawTriangle(api)

    }

    func testExample2() {
        let iTurtle = TurtleImplementationOO.halfSize()
        let api = TurtleApiLayerOO.TurtleApi(iTurtle: iTurtle)
        TurtleApiClientOO.drawTriangle(api)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
