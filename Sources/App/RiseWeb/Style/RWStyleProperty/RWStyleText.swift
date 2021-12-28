//
//  RWStyleText.swift
//  App
//
//  Created by Guerson on 2018-10-26.
//

import Foundation

public enum RWStyleTextDecorationType: String {
    case none = "none"
    case underline = "underline"
    case overline = "overline"
    case lineThrough = "line-through"
    case initial = "initial"
    case inherit = "inherit"
}
public enum RWStyleTextDecorationStyle: String {
    case soildLine = "solid"
    case doubleLine = "double"
    case dottedLine = "dotted"
    case dashedLine = "dashed"
    case wavyLine = "wavy"
    case initial = "initial"
    case inherit = "inherit"
}
public enum RWStyleTextAlignment: String {
    case left = "left"
    case right = "right"
    case center = "center"
    case justify = "justify"
    case initial = "initial"
    case inherit = "inherit"
}


class RWStyleText: RWPrimitive {
    
    var decorationLineType: RWStyleTextDecorationType?
    var decorationLineColor: RWColor?
    var decorationLineStyle: RWStyleTextDecorationStyle?
    var shadow: RWValShadow?
    
    var alignment: RWStyleTextAlignment?
    
    func buildPrimitive() -> String? {
        var propertiesString = ""
        
        if let decorStr = decorationLineType?.rawValue {
            propertiesString.append("text-decoration:\(decorStr);")
        }
        if let decorColor = decorationLineColor?.buildPrimitive() {
            propertiesString.append("text-decoration-color:\(decorColor);")
        }
        if let decorLineStyle = decorationLineStyle?.rawValue {
            propertiesString.append("text-decoration-style:\(decorLineStyle);")
        }
        if let shadowVal = shadow?.buildPrimitive() {
            propertiesString.append("text-shadow:\(shadowVal);")
        }
        
        if let alignVal = alignment?.rawValue {
            propertiesString.append("text-align:\(alignVal);")
        }
        
        
        
        if propertiesString.count > 0 {
            return propertiesString
        }
        return nil
    }
}
