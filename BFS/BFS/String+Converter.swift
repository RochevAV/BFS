//
//  String+Converter.swift
//  DFS
//
//  Created by Aleksey Rochev on 17/05/2017.
//  Copyright © 2017 AlekseyRochev. All rights reserved.
//

import Foundation

extension String {
    func toBool() -> Bool? {
        switch self {
        case "true", "1", "yes":
            return true
        case "false", "0", "no":
            return false
        default:
            return nil
        }
    }
}
