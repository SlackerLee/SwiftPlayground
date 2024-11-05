import UIKit
import XCTest

struct Calculation {
    func calculateTip(of enteredAmount: Double, with tip: Double) -> Double? {
        guard enteredAmount >= 0 && tip >= 0 else { return nil }
        let tipPercentage = tip / 100
        return enteredAmount * tipPercentage
    }
}


final class CaluculationTests: XCTestCase {
    func testCalculateTip() {
        let calculation = Calculation()
        let result = calculation.calculateTip(of: 100, with: 15)
        XCTAssertEqual(result, 15)
    }
    func testCalculateTipCalucationTest() {
        // Given (Arrange)
        let enterdAmount = 100.00
        let tipSliper = 25.00
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: enterdAmount, with: tipSliper)
        // Then (Assert)
        XCTAssertEqual(tip, 25)
    }
    func testNegetiveCalculateTipCalucationTest() {
        // Given (Arrange)
        let enterdAmount = -100.00
        let tipSliper = 25.00
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: enterdAmount, with: tipSliper)
        // Then (Assert)
        XCTAssertNil(tip)
    }
}
