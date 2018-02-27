//
//  Math.swift
//
//  Created by Yaroslav Pasternak on 03.07.17.

import Foundation

public func isInRange<T: Comparable>(item: T, min: T, max: T) -> Bool {
    return item >= min && item <= max
}

public func log(base: Double, value: Double) -> Double {
    return log(value) / log(base)
}
