//
//  RWStyleLayout.swift
//  App
//
//  Created by Guerson on 2018-10-26.
//

import Foundation

public enum RWStyleLayoutKey: String {
    case contentHorizontalAlignment = "justify-content"
    case contentVerticalAlignment = "align-items"
    case contentMultiLineVerticalAlignment = "align-content"
    case selfVerticalAlignment = "align-self"
    case widthBasis = "flex-basis"
    case flowDirection = "flex-direction"
    case lineWrap = "flex-wrap"
    case relativeScale = "flex-grow"
}
public enum RWStyleLayoutContentHorizontalAlignment: String {
    case left = "flex-start"
    case right = "flex-end"
    case center = "center"
    case stretched = "stretch"
    case distribute = "space-between"
    case distributeWithSpace = "space-around"
    case initial = "initial"
    case inherit = "inherit"
}
public enum RWStyleLayoutContentVerticalAlignment: String {
    case top = "flex-start"
    case bottom = "flex-end"
    case center = "center"
    case stretch = "stretch"
    case baseline = "baseline"
    case initial = "initial"
    case inherit = "inherit"
}
public enum RWStyleLayoutContentMultilineVerticalAlignment: String {
    case left = "flex-start"
    case right = "flex-end"
    case center = "center"
    case stretched = "stretch"
    case distribute = "space-between"
    case distributeWithSpace = "space-around"
    case initial = "initial"
    case inherit = "inherit"
}
public enum RWStyleLayoutSelfVerticalAlignment: String {
    case top = "flex-start"
    case bottom = "flex-end"
    case center = "center"
    case stretch = "stretch"
    case baseline = "baseline"
    case initial = "initial"
    case inherit = "inherit"
    case auto = "auto"
}
public enum RWStyleLayoutFlowDirection: String {
    case row = "row"
    case rowReversed = "row-reverse"
    case column = "column"
    case columnReversed = "column-reverse"
    case initial = "initial"
    case inherit = "inherit"
}
public enum RWStyleLayoutLineWrap: String {
    case noWrap = "nowrap"
    case wrap = "wrap"
    case wrapReverse = "wrap-reverse"
    case initial = "initial"
    case inherit = "inherit"
}




class RWStyleLayout: RWPrimitive {
    
    var contentHorizontalAlignment: RWStyleLayoutContentHorizontalAlignment?
    var contentVerticalAlignment: RWStyleLayoutContentVerticalAlignment?
    var contentMultilineVerticalAlignment: RWStyleLayoutContentMultilineVerticalAlignment?
    var selfVerticalAlignment: RWStyleLayoutSelfVerticalAlignment?
    var widthBasis: RWUnit?
    var flowDirection: RWStyleLayoutFlowDirection?
    var lineWrap: RWStyleLayoutLineWrap?
    var relativeScale: Double?
    
    func buildPrimitive() -> String? {
        var propertiesString = ""
        
        if let contentHorizontalAlignmentVal = contentHorizontalAlignment?.rawValue {
            propertiesString.append("\(RWStyleLayoutKey.contentHorizontalAlignment.rawValue):\(contentHorizontalAlignmentVal);")
        }
        if let contentVerticalAlignmentVal = contentVerticalAlignment?.rawValue {
            propertiesString.append("\(RWStyleLayoutKey.contentVerticalAlignment.rawValue):\(contentVerticalAlignmentVal);")
        }
        if let contentMultilineVerticalAlignmentVal = contentMultilineVerticalAlignment?.rawValue {
            propertiesString.append("\(RWStyleLayoutKey.contentMultiLineVerticalAlignment.rawValue):\(contentMultilineVerticalAlignmentVal);")
        }
        if let selfVerticalAlignmentVal = selfVerticalAlignment?.rawValue {
            propertiesString.append("\(RWStyleLayoutKey.selfVerticalAlignment.rawValue):\(selfVerticalAlignmentVal);")
        }
        if let widthBasisVal = widthBasis?.buildPrimitive() {
            propertiesString.append("\(RWStyleLayoutKey.widthBasis.rawValue):\(widthBasisVal);")
        }
        if let flowDirectionVal = flowDirection?.rawValue {
            propertiesString.append("\(RWStyleLayoutKey.flowDirection.rawValue):\(flowDirectionVal);")
        }
        if let lineWrapVal = lineWrap?.rawValue {
            propertiesString.append("\(RWStyleLayoutKey.lineWrap.rawValue):\(lineWrapVal);")
        }
        if let scale = self.relativeScale {
            propertiesString.append("\(RWStyleLayoutKey.relativeScale.rawValue):\(scale);")
        }
        
        
        if propertiesString.count > 0 {
            return propertiesString
        }
        return nil
    }
}
