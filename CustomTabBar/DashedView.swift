//
//  DashedView.swift
//  CustomTabBar
//
//  Created by Vikas Pandey on 25/10/17.
//  Copyright © 2017 Valtech. All rights reserved.
//

import UIKit

class DashedView: UIView {

    override func draw(_ rect: CGRect) {

        let path = UIBezierPath(roundedRect: rect, cornerRadius: 100)

//        UIColor.purple.setFill()
//        path.fill()

        UIColor.lightGray.setStroke()
        path.lineWidth = 100

        let dashPattern : [CGFloat] = [10, 20]
        path.setLineDash(dashPattern, count: 2, phase: 0)
        path.stroke()
    }
    

}

