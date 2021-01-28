//
//  ThreeSum.swift
//  Algorithms
//
//  Created by Tieda Wei on 2021-01-28.
//

import Foundation

/*
 
 Write a function that takes in a non-empty array of distinct integers and an
 integer representing a target sum. The function should find all triplets in
 the array that sum up to the target sum and return a two-dimensional array of
 all these triplets. The numbers in each triplet should be ordered in ascending
 order, and the triplets themselves should be ordered in ascending order with
 respect to the numbers they hold.
 
 If no three numbers sum up to the target sum, the function should return an
 empty array.

 e.g.
 array = [ 12, 3, 1, 2, -6, 5, -8, 6 ]
 target = 0
 
 -> [[-8, 2, 6], [-8, 3, 5], [-6, 1, 5]]

 */

final class ThreeSum {
    
    // t: O(n^3), s: O(n)
    static func solution(input: [Int], targetSum: Int) -> [[Int]] {
        var result = [[Int]]()
        
        let inputCount = input.count
        
        for i in 0..<(inputCount - 2) {
            for j in (i+1)..<(inputCount - 1) {
                for k in (j+1)..<inputCount {
                    if (input[i] + input[j] + input[k]) == targetSum {
                        result.append([input[i], input[j], input[k]])
                    }
                }
            }
        }
        
        return result
    }
    
    static func solution2(input: [Int], targetSum: Int) -> [[Int]] {
        var result = [[Int]]()
        
        let inputCount = input.count
        
        for i in 0..<(inputCount - 2) {
            for j in (i+1)..<(inputCount - 1) {
                for k in (j+1)..<inputCount {
                    if (input[i] + input[j] + input[k]) == targetSum {
                        result.append([input[i], input[j], input[k]])
                    }
                }
            }
        }
        
        return result
    }
    
}

