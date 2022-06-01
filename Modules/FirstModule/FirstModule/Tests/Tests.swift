//
//  Tests.swift
//  Tests
//
//  Created by Naveed Tahir on 31/05/2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import XCTest
@testable import FirstModule

class Tests: XCTestCase {

    var firstViewController: FirstViewController!
    
    override func setUp() {
        super.setUp()
        firstViewController = FirstViewController.create()
        // setting up mock enviornment and response monitor
    }
    
    override func tearDown() {
        super.tearDown()
       firstViewController = nil
    }

    func testFirstViewController_MatchStringTest() {
        // given
        // when
        let value = firstViewController.matchString(value: "Naveed")
        // then
        XCTAssertTrue(value)
    }

}
