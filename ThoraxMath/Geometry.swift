//
//  Geometry.swift
//
//  Created by Yaroslav Pasternak on 29.05.17.

import CoreGraphics
import Foundation

func radiansFrom(degrees: CGFloat) -> CGFloat { return degrees * CGFloat.pi / 180 }

func degreesFrom(radians: CGFloat) -> CGFloat { return radians * 180 / CGFloat.pi }

/// converts angle counting from North rather than from 0
func compass(degrees: CGFloat) -> CGFloat { return compass(radians: radiansFrom(degrees: degrees)) }

/// converts angle counting from North rather than from 0
func compass(radians: CGFloat) -> CGFloat { return radians - CGFloat.pi * 0.5 }

struct Circle {
    let radius: CGFloat
    let center: CGPoint
    
    /// returns point on circumference by the given angle clockwise in radians
    func circumferencePoint(radians: CGFloat) -> CGPoint {
        return CGPoint(x: center.x + radius * cos(radians), y: center.y + radius * sin(radians))
    }
}
