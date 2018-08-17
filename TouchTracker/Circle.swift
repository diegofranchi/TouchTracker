//
//  Circle.swift
//  TouchTracker
//
//  Created by CampusUser on 4/18/18.
//  Copyright © 2018 Diego Franchi. All rights reserved.
//

import Foundation
import CoreGraphics

// MARK: - Gold Challenge: Circles
struct Circle {
    var rect = CGRect.zero
    
    init() {
        self.rect = CGRect.zero
    }
    
    init(rect: CGRect) {
        self.rect = rect
    }
    
    init(point1: CGPoint, point2: CGPoint) {
        let width = abs(point2.x - point1.x)
        let height = abs(point2.y - point1.y)
        let diameter = min(width, height)
        let radius = diameter / 2
        var x = (point1.x + point2.x) / 2
        var y = (point1.y + point2.y) / 2
        let center = CGPoint(x: x, y: y)
        x = center.x - radius
        y = center.y - radius
        self.rect = CGRect(x: x, y: y, width: diameter, height: diameter)
    }
}
