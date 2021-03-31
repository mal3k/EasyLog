import XCTest
import EasyLog

final class EasyLogTests: XCTestCase {
    let logger: Logger!
    override func setUpWithError() throws {
        logger = Logger()
    }
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertNotNil(logger)
    }
    override func tearDownWithError() throws {
        logger = nil
    }
    static var allTests = [
        ("testExample", testExample),
    ]
}
