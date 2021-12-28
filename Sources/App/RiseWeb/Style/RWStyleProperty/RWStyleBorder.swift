//
//  RWStyleBorder.swift
//  App
//
//  Created by Guerson on 2018-10-26.
//

import Foundation

public enum RWStyleBorderStyle: String {
    case none = "none"
    case hidden = "hidden"
    case dotted = "dotted"
    case dashed = "dashed"
    case solid = "solid"
    case doubled = "double"
    case grooved = "groove"
    case ridged = "ridge"
    case inset = "inset"
    case outset = "outset"
    case initial = "initial"
    case inherit = "inherit"
}

class RWStyleBorder: RWPrimitive {
    
    var bottomColor: RWColor?
    var leftColor: RWColor?
    var rightColor: RWColor?
    var topColor: RWColor?
    
    var bottomLeftRadius: RWUnit?
    var bottomRightRadius: RWUnit?
    var topLeftRadius: RWUnit?
    var topRightRadius: RWUnit?
    
    var bottomStyle: RWStyleBorderStyle?
    var leftStyle: RWStyleBorderStyle?
    var topStyle: RWStyleBorderStyle?
    var rightStyle: RWStyleBorderStyle?
    
    var bottomWidth: RWUnit?
    var leftWidth: RWUnit?
    var topWidth: RWUnit?
    var rightWidth: RWUnit?
    
    func buildPrimitive() -> String? {
        var propertiesString = ""
        
        if let bottomColorVal = bottomColor?.buildPrimitive() {
            propertiesString.append("border-bottom-color:\(bottomColorVal);")
        }
        if let leftColorVal = leftColor?.buildPrimitive(){
            propertiesString.append("border-left-color:\(leftColorVal);")
        }
        if let rightColorVal = rightColor?.buildPrimitive() {
            propertiesString.append("border-right-color:\(rightColorVal);")
        }
        if let topColorVal = topColor?.buildPrimitive() {
            propertiesString.append("border-top-color:\(topColorVal);")
        }
        
        
        if let bottomLeftRadiusVal = bottomLeftRadius?.buildPrimitive() {
            propertiesString.append("border-bottom-left-radius:\(bottomLeftRadiusVal);")
        }
        if let bottomRightRadiusVal = bottomRightRadius?.buildPrimitive() {
            propertiesString.append("border-bottom-right-radius:\(bottomRightRadiusVal);")
        }
        if let topLeftRadiusVal = topLeftRadius?.buildPrimitive() {
            propertiesString.append("border-top-left-radius:\(topLeftRadiusVal);")
        }
        if let topRightRadiusVal = topRightRadius?.buildPrimitive() {
            propertiesString.append("border-top-right-radius:\(topRightRadiusVal);")
        }
        
        if let bottomStyleVal = bottomStyle?.rawValue {
            propertiesString.append("border-bottom-style:\(bottomStyleVal);")
        }
        if let leftStyleVal = bottomStyle?.rawValue {
            propertiesString.append("border-left-style:\(leftStyleVal);")
        }
        if let topStyleVal = bottomStyle?.rawValue {
            propertiesString.append("border-top-style:\(topStyleVal);")
        }
        if let rightStyleVal = bottomStyle?.rawValue {
            propertiesString.append("border-right-style:\(rightStyleVal);")
        }
        
        
        if let bottomWidthVal = bottomWidth?.buildPrimitive() {
            propertiesString.append("border-bottom-width:\(bottomWidthVal);")
        }
        if let leftWidthVal = bottomWidth?.buildPrimitive() {
            propertiesString.append("border-left-width:\(leftWidthVal);")
        }
        if let topWidthVal = bottomWidth?.buildPrimitive() {
            propertiesString.append("border-top-width:\(topWidthVal);")
        }
        if let rightWidthVal = bottomWidth?.buildPrimitive() {
            propertiesString.append("border-right-width:\(rightWidthVal);")
        }
        
        
        if propertiesString.count > 0 { return propertiesString }
        return nil
    }
}

extension RWStyle {
    
    func setBorderRadiusPix(topLeft: Double?, topRight: Double?, bottomLeft: Double?, bottomRight: Double?) {
        if let topL = topLeft {
            self.border.topLeftRadius = RWUnit.pix(topL)
        }
        if let topR = topRight {
            self.border.topRightRadius = RWUnit.pix(topR)
        }
        if let botL = bottomLeft {
            self.border.bottomLeftRadius = RWUnit.pix(botL)
        }
        if let botR = bottomRight {
            self.border.bottomRightRadius = RWUnit.pix(botR)
        }
    }
    func setBorderRadiusPix(topLeft: Double?, topRight: Double? ){
        setBorderRadiusPix(topLeft: topLeft, topRight: topRight, bottomLeft: nil, bottomRight: nil)
    }
    func setBorderRadius(topLeft: RWUnit?, topRight: RWUnit?, bottomLeft: RWUnit?, bottomRight: RWUnit?) {
        self.border.topLeftRadius = topLeft
        self.border.topRightRadius = topRight
        self.border.bottomLeftRadius = bottomLeft
        self.border.bottomRightRadius = bottomRight
    }
    
    func setBorderRadius(_ val: Double?) {
        self.setBorderRadiusPix(topLeft: val, topRight: val, bottomLeft: val, bottomRight: val)
    }
    
    
    func setBorderRadiusEm(topLeft: Double?, topRight: Double?, bottomLeft: Double?, bottomRight: Double?) {
        if let topL = topLeft {
            self.border.topLeftRadius = RWUnit.em(topL)
        }
        if let topR = topRight {
            self.border.topRightRadius = RWUnit.em(topR)
        }
        if let botL = bottomLeft {
            self.border.bottomLeftRadius = RWUnit.em(botL)
        }
        if let botR = bottomRight {
            self.border.bottomRightRadius = RWUnit.em(botR)
        }
    }
    func setBorderRadiusEm(_ val: Double?) {
        self.setBorderRadiusEm(topLeft: val, topRight: val, bottomLeft: val, bottomRight: val)
    }
}
