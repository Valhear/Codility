/*
 Your job is to sort giraffes into groups based on the lengths of their necks. The giraffes get anxious if their group contains giraffes with much longer necks than theirs. So, you’ll need to make sure that the differences between neck lengths in a group is not greater than 2. The input you get is a one-dimensional array of length N, with lengths between 1 and 20. The desired output is a two-dimensional array with groups of lengths.
 
 input: [1,1,2,3,7,8,10,9,7,8,13,20,12,18,15,13,13,12,15,14,16,17,18]
 output: [[1,1,2,3],[4,5,6],[7,8,9],[10,11,12]]
 
 */

import Foundation
import XCTest

func groupedGiraffes(input: [Int]) -> [[Int]] {
    var groupedGiraffes: [[Int]] = [[]]
    
    let sortedGiraffes = input.sorted()
    sortedGiraffes.forEach { neckLength in
        let lastIndex = groupedGiraffes.count
        
        if neckLength > ((groupedGiraffes[lastIndex-1].min() ?? 0) + 2 ) {
            let newGroup = [neckLength]
            groupedGiraffes.append(newGroup)
        } else {
            groupedGiraffes[lastIndex-1].append(neckLength)
        }
    }
    
    let x = sortedGiraffes.enumerated()
    return groupedGiraffes
    
    
}

func test() {
    XCTAssertEqual(groupedGiraffes(input: [1,3,4]), [[1,3],[4]], "wrong")
}

groupedGiraffes(input: [1,3,4])
groupedGiraffes(input: [1,1,2,3,7,8,10,9,7,8,13,20,12,18,15,13,13,12,15,14,16,17,18])
