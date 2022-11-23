//
//  sortingAlgorithms.swift
//  algorithmsTestsFinal
//
//  Created by Hopes, William (AMM) on 23/11/2022.
//

import Foundation

class sortingAlgorithms {
    
    func bubbleSort(data: [Int]) -> [Int] {
        var array = data
        for i in 0..<array.count {
            for j in 0..<array.count {
                if array[i] < array[j] {
                    array.swapAt(j, i)
                }
            }
        }
        return array
    }
    
    func quickSort(data: [Int]) -> [Int] {
        var left = [Int]()
        var right = [Int]()
        var equalVal = [Int]()
        let pivot = data[(data.count-1)]
        
        if data.count > 1 {
            for i in 1..<data.count {
                if data[i] < pivot {
                    left.append(data[i])
                }
                else if data[i] > pivot {
                    right.append(data[i])
                }
                else {
                    equalVal.append(data[i])
                }
            }
            return (quickSort(data: left) + equalVal + quickSort(data: right))
        }
        else {
            return data
        }
    }
}
