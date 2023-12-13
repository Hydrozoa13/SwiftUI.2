//
//  DoubleExt.swift
//  SwiftUI.2
//
//  Created by Евгений Лойко on 13.12.23.
//

import Foundation

extension Double {
    var toString: String {
        get { String(format: "%.0f", self) }
        set { self = Double(newValue) ?? 0 }
    }
}
