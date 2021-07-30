import Foundation
import XCTest

class Base: XCTestCase {

    let app = XCUIApplication(bundleIdentifier: "com.apple.mobileslideshow")

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
