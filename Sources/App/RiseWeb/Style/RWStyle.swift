//
//  RWStyle.swift
//  RiseFitSite
//
//  Created by Guerson Perez Yañez on 2017-06-26.
//
//

import Foundation

class RWStyle: RWPrimitive {
    
    var background = RWStyleBackground()
    var border = RWStyleBorder()
    var box = RWStyleBox()
    var font = RWStyleFont()
    var text = RWStyleText()
    var layout = RWStyleLayout()
    var content = RWStyleContent()
    var cursor = RWStyleCursor()
    
    var color: RWColor?
    var opacity: Double?
    
    func buildPrimitive() -> String? {
        var primString = ""
        
        if let backStyles = background.buildPrimitive() {
            primString.append(backStyles)
        }
        if let borderStyles = border.buildPrimitive() {
            primString.append(borderStyles)
        }
        if let boxStyle = box.buildPrimitive() {
            primString.append(boxStyle)
        }
        if let fontStyle = font.buildPrimitive() {
            primString.append(fontStyle)
        }
        if let textStyle = text.buildPrimitive() {
            primString.append(textStyle)
        }
        if let layoutStyle = layout.buildPrimitive() {
            primString.append(layoutStyle)
        }
        if let contentStyle = content.buildPrimitive() {
            primString.append(contentStyle)
        }
        if let cursorStyle = cursor.buildPrimitive() {
            primString.append(cursorStyle)
        }
        
        
        if let colorVal = color?.buildPrimitive() {
            primString.append("color: \(colorVal);")
        }
        if let opactityVal = self.opacity {
            primString.append(" opacity: \(opactityVal);")
        }
        
        
        if primString.count > 0 { return primString }
        return nil
    }
    
}











