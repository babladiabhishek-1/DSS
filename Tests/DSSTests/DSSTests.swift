import XCTest
@testable import DSS

final class FigmaAPIManagerTests: XCTestCase {
    func testFetchFigmaData() async throws {
        // Arrange
        let manager = FigmaAPIManager.shared

        // Act
        await manager.fetchFigmaData()

        // Assert
        XCTAssertFalse(manager.textStyles.isEmpty, "Text styles should not be empty after fetching data.")
        XCTAssertFalse(manager.colors.isEmpty, "Colors should not be empty after fetching data.")
    }
}
