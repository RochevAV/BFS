//
//  MatrixManager.swift
//  DFS
//
//  Created by Aleksey Rochev on 17/05/2017.
//  Copyright © 2017 AlekseyRochev. All rights reserved.
//

import Foundation

class MatrixManager {
    
    fileprivate let matrixDefault = "0 4 0 0 8\n4 0 2 6 5\n0 2 0 3 0\n0 6 3 0 7\n8 5 0 7 0"
    let matrix : [[Int]]
    
    init() {
        matrix = MatrixManager.matrixFromString(matrixDefault)
    }
    
    private static func matrixFromString(_ string: String) -> [[Int]] {
        
        let array = string.components(separatedBy: CharacterSet.newlines)
        
        let lenght = array.count
        let clearArray = Array(repeatElement(0, count: lenght))
        var returnArray = Array(repeatElement(clearArray, count: lenght))
        
        for (indexX, line) in array.enumerated() {
            
            let items = line.components(separatedBy: CharacterSet.whitespaces)
            
            for (indexY, value) in items.enumerated() {
                
                if let value = Int(value) {
                    returnArray[indexX][indexY] = value
                }
            }
        }        
        return returnArray
    }
    
    static func bfsMatrix(_ matrix: inout [[Int]], nodeNum: inout Int) {
        
        let count = matrix.count
        var queue = Queue<Int>()
        
        var visitItem = Array(repeating: false, count: count)
        visitItem[nodeNum] = true
        
        queue.enqueue(nodeNum)
        
        while queue.count > 0 {
            
            nodeNum = queue.dequeue()!
            
            for i in 0..<count {
                if !visitItem[i] {
                    visitItem[i] = true

                    queue.enqueue(i)
                    
                    for j in 0..<count {
                        
                        matrix[nodeNum][j] = min(matrix[nodeNum][j], matrix[nodeNum][i] + matrix[i][j])
                    }
                }
            }
        }
    }
    
    static func printBFSMatrix(_ matrix: inout [[Int]], forNode: inout Int) {
        
        var node = forNode
        MatrixManager.bfsMatrix(&matrix, nodeNum: &node)
        
        print("\nКротчайшие пути:")
        
        for i in 0..<matrix.count {
            print("\(forNode)->\(i + 1) = \(matrix[forNode - 1][i])");
        }
    }
    
    static func printMatrix(_ matrix: [[Int]]) {
        print("Матрица:")
        let count = matrix.count
        for i in 0..<count {
            var line = ""
            for j in 0..<count {
                line += String(matrix[i][j]) + " "
            }
            print(line)
        }
    }
}
