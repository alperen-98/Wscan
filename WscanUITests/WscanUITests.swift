import XCTest

final class WscanUITests: XCTestCase {
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunchShowsEmptyState() throws {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.navigationBars["Wscan"].waitForExistence(timeout: 5))
        XCTAssertTrue(app.staticTexts["No letters yet"].exists)
    }
}
