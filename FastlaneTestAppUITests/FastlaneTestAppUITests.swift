//
//  FastlaneTestAppUITests.swift
//  FastlaneTestAppUITests
//
//  Created by Erik Villegas on 9/24/16.
//  Copyright © 2016 Erik Villegas. All rights reserved.
//

import XCTest

class FastlaneTestAppUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    func testCreateScreenShot() {
        
        let app = XCUIApplication()
        
        snapshot("Screen1")

        app.buttons["Go to Screen 2"].tap()
        
        snapshot("Screen2")
        
        app.buttons["Go to Screen 3"].tap()
        
        snapshot("Screen3")
    }
    
}
