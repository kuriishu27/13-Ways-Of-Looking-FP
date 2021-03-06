//
//  4-API-FP-Core-Tests.swift
//  13WaysOfLookingAtATurtleTests
//
//  Created by Christian Leovido on 26/04/2020.
//  Copyright © 2020 Christian Leovido. All rights reserved.
//

import XCTest
@testable import _3WaysOfLookingAtATurtle

class APIFPCoreTests: XCTestCase {

    func testDrawTriangle() {
        FPTurtleApiClient().drawTriangle()
    }

    func testDrawThreeLines() {
        FPTurtleApiClient().drawThreeLines()
    }

    func testDrawPolygon() {
        FPTurtleApiClient().drawPolygon(4)
    }

    func testTriggerError() {

        let result = FPTurtleApiClient().triggerError()

        do {
            try result.get()
        } catch let error {
            XCTAssertEqual(error.localizedDescription, "Invalid distance: bad")
        }

    }

}
