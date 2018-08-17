//
//  Line.swift
//  TouchTracker
//
//  Created by CampusUser on 4/18/18.
//  Copyright © 2018 Diego Franchi. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics

struct Line {
    var begin = CGPoint.zero
    var end = CGPoint.zero
    var width: CGFloat = 10
}

// MARK: - Silver Challenge: Colors
extension Line {
    var angle : CGFloat {
        guard begin != end else { return 0 }
        let x = end.x - begin.x
        let y = end.y - begin.y
        var angle = atan2(y, x) * 180 / CGFloat(Double.pi)
        if angle < 0 {
            angle = angle + 360
        }
        print(angle)
        return CGFloat(angle)
    }
    var color : UIColor {
        let hue = angle / 360
        return UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
    }
}
