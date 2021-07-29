//
//  Base.swift
//  PhotosAppUITests
//
//  Created by Luiz Eduardo Martins on 29/07/2021.
//

import Foundation
import XCTest

class Base: XCTestCase {

    var app = XCUIApplication(bundleIdentifier: "com.apple.mobileslideshow")

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
}
