//
//  main.swift
//  BFS
//
//  Created by Aleksey Rochev on 17/05/2017.
//  Copyright © 2017 AlekseyRochev. All rights reserved.
//

import Foundation

print("Lab 3 \"Breadth-first search\"  \n")
print("Getting edges from adjacency matrix: \n")

var matrix = MatrixManager().matrix

MatrixManager.printMatrix(matrix)

var node = 3

MatrixManager.printBFSMatrix(&matrix, forNode: &node)


