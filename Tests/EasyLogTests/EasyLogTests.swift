import XCTest
@testable import EasyLog

final class EasyLogTests: XCTestCase {
  
  // MARK: - Properties
  
  var logger: Logger!
  
  override func setUpWithError() throws {
    logger = Logger()
  }
  
  override func tearDownWithError() throws {
    logger = nil
  }
  
  func testLogger_WhenInitiated_IsNotNil() {
    XCTAssertNotNil(logger)
    XCTAssertNotNil(logger.dateFormatter)
  }
  
  static var allTests = [
    ("testExample", testLogger_WhenInitiated_IsNotNil),
  ]
}
