//
//  TDDFinal.swift
//  TDDFinal
//
//  Created by Hopes, William (AMM) on 23/11/2022.
//

import XCTest

class TDDFinal: XCTestCase {
    func testBubbleSort_WithUnsortedIntegerArray_ReturnSortedIntegerArray() {
        let sut = sortingAlgorithms()
        let unsortedArray = [12, 2453, 643, 3, 1244, 46]
        let expectedOutput = [3, 12, 46, 643, 1244, 2453]
        
        let sortedArray = sut.bubbleSort(data: unsortedArray)
        
        XCTAssertEqual(expectedOutput, sortedArray)
    }
    func testQuickSort_WithUnsortedIntegerArray_ReturnSortedIntegerArray() {
        let sut = sortingAlgorithms()
        let unsortedArray = [12, 2453, 643, 3, 1244, 46]
        let expectedOutput = [3, 12, 46, 643, 1244, 2453]
        
        let sortedArray = sut.quickSort(data: unsortedArray)
        
        XCTAssertEqual(expectedOutput, sortedArray)
    }
}
