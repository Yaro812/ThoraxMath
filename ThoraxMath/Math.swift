//
//  Math.swift
//
//  Created by Yaroslav Pasternak on 03.07.17.

import Foundation

func isInRange<T: Comparable>(item: T, min: T, max: T) -> Bool {
    return item >= min && item <= max
}

func log(base: Double, value: Double) -> Double {
    return log(value) / log(base)
}
