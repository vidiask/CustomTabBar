//
//  CircularView.swift
//  CustomTabBar
//
//  Created by Vikas Pandey on 25/10/17.
//  Copyright © 2017 Valtech. All rights reserved.
//

import UIKit

class CircularView: UIView {

    let borderWidth: CGFloat = 20

    let startAngle = CGFloat(Double.pi)
    let middleAngle1 = CGFloat(Double.pi + Double.pi / 4)
    let middleAngle2 = CGFloat(Double.pi + Double.pi / 2)
    let endAngle = CGFloat(2 * Double.pi)
    var primaryColor = UIColor.red
    var secondaryColor = UIColor.blue
    var aColor = UIColor.green
    var currentStrokeValue = CGFloat(0)

    override func draw(_ rect: CGRect) {

        let center = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        let radius = CGFloat(self.frame.width / 2 - borderWidth)

        let path1 = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: middleAngle1, clockwise: true)

        let path2 = UIBezierPath(arcCenter: center, radius: radius, startAngle: middleAngle1, endAngle: middleAngle2, clockwise: true)

        let path3 = UIBezierPath(arcCenter: center, radius: radius, startAngle: middleAngle2, endAngle: endAngle, clockwise: true)

        path1.lineWidth = borderWidth
        primaryColor.setStroke()
        path1.stroke()
        path2.lineWidth = borderWidth
        secondaryColor.setStroke()
        path2.stroke()
        path3.lineWidth = borderWidth
        aColor.setStroke()
        path3.stroke()
    }
}
