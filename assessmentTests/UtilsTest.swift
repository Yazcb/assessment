//
//  UtilsTest.swift
//  assessmentTests
//
//  Created by Yazmin Carmona Barrera on 20/12/23.
//

import XCTest
@testable import assessment

final class UtilsTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testSumOnlyEvenNumbersSuccess() throws {
        // Test case 1: Test with an array containing only even numbers
        let inputNumbers = [2,4,6]
        let result = Utils.sumOfEvenNumbers(numbers: inputNumbers)
    }
    
    
    
    func testSumEvenNumbersSuccess() throws {
        // Test case 2: Test with an array containing even and odd numbers
        let inputNumbers = [1,2,3,4,5,6,7,8]
        let result = Utils.sumOfEvenNumbers(numbers: inputNumbers)
    
        XCTAssertEqual(result,20, "Error al realizar la sumatoria")
    
    }

    func testSumEmptyArraySuccess() throws {
        let emptyArray = [Int]()
        let result = Utils.sumOfEvenNumbers(numbers: emptyArray)
    
        XCTAssertEqual(result,0, "La suma es incorrecta en un array vacio")
    
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
