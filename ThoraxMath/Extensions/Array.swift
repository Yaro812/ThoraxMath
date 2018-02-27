//
//  Array.swift
//  ThoraxMath
//
//  Created by Yaroslav Pasternak on 27.02.2018.
//  Copyright © 2018 Teambrella. All rights reserved.
//

import Foundation

public extension Array {
    /// Binary search could be applied to pre-sorted arrays only
    public func insertionIndexOf(element: Element, order: (Element, Element) -> Bool) -> Int {
        var lo = 0
        var hi = self.count - 1
        while lo <= hi {
            let mid = (lo + hi) / 2
            if order(self[mid], element) {
                lo = mid + 1
            } else if order(element, self[mid]) {
                hi = mid - 1
            } else {
                return mid
            }
        }
        return lo
    }
}

public extension Array where Element: Comparable {
    /// Use only on pre-sorted array
    mutating public func insertOrdered(_ element: Element) {
        insert(element, at: insertionIndexOf(element: element, order: { $0 < $1 }))
    }
}
