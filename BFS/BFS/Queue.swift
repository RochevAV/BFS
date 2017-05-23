//
//  Queue.swift
//  BFS
//
//  Created by Aleksey Rochev on 23/05/2017.
//  Copyright © 2017 AlekseyRochev. All rights reserved.
//

import Foundation
// 1
public struct Queue<T> {
    fileprivate var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
}
