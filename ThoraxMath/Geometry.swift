//
//  Geometry.swift
//
//  Created by Yaroslav Pasternak on 29.05.17.

import CoreGraphics
import Foundation

public func radiansFrom(degrees: CGFloat) -> CGFloat { return degrees * CGFloat.pi / 180 }

public func degreesFrom(radians: CGFloat) -> CGFloat { return radians * 180 / CGFloat.pi }

/// converts angle counting from North rather than from 0
public func compass(degrees: CGFloat) -> CGFloat { return compass(radians: radiansFrom(degrees: degrees)) }

/// converts angle counting from North rather than from 0
public func compass(radians: CGFloat) -> CGFloat { return radians - CGFloat.pi * 0.5 }

public struct Circle {
    public let radius: CGFloat
    public let center: CGPoint

    public init(radius: CGFloat, center: CGPoint) {
        self.radius = radius
        self.center = center
    }

    /// returns point on circumference by the given angle clockwise in radians
    public func circumferencePoint(radians: CGFloat) -> CGPoint {
        return CGPoint(x: center.x + radius * cos(radians), y: center.y + radius * sin(radians))
    }
}
