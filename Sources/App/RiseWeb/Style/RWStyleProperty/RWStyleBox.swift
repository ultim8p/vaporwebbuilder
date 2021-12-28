//
//  RWStyleBox.swift
//  App
//
//  Created by Guerson on 2018-10-26.
//

import Foundation

enum RWStyleBoxDisplayType: String {
    case flex = "flex"
    case inline = "inline"
    case block = "block"
    case inlineBlock = "inline-block"
    case inlineFlex = "inline-flex"
    case inlineTable = "inline-table"
    case listItem = "list-item"
    case runIn = "run-in"
    case table = "table"
    case tableCaption = "table-caption"
    case tableColumnGroup = "table-column-group"
    case tableHeaderGroup = "table-header-group"
    case tableFooterGroup = "table-footer-group"
    case tableRowGroup = "table-row-group"
    case tableCell = "table-cell"
    case tableColumn = "table-column"
    case tableRow = "table-row"
    case none = "none"
    case initial = "initial"
    case inherit = "inherit"
}

class RWStyleBox: RWPrimitive {
    
    var display: RWStyleBoxDisplayType?
    
    var hidden: Bool?
    
    var width: RWUnit?
    var height: RWUnit?
    var minWidth: RWUnit?
    var minHeight: RWUnit?
    var maxWidth: RWUnit?
    var maxHeight: RWUnit?
    
    var marginBottom: RWUnit?
    var marginTop: RWUnit?
    var marginLeft: RWUnit?
    var marginRight: RWUnit?
    
    var paddingLeft: RWUnit?
    var paddingRight: RWUnit?
    var paddingTop: RWUnit?
    var paddingBottom: RWUnit?
    
    var shadow: RWValShadow?
    
    func buildPrimitive() -> String? {
        var propertiesString = ""
        
        if let dispVal = display?.rawValue {
            propertiesString.append("display:\(dispVal);")
        }
        
        if let hidden = self.hidden {
            if hidden {
                propertiesString.append("visibility:hidden;")
            } else {
                propertiesString.append("visibility:visible;")
            }
        }
        
        if let paddLeftVal = paddingLeft?.buildPrimitive() {
            propertiesString.append("padding-left:\(paddLeftVal);")
        }
        if let paddRightVal = paddingRight?.buildPrimitive() {
            propertiesString.append("padding-right:\(paddRightVal);")
        }
        if let paddBottVal = paddingBottom?.buildPrimitive() {
            propertiesString.append("padding-bottom:\(paddBottVal);")
        }
        if let paddTopVal = paddingTop?.buildPrimitive() {
            propertiesString.append("padding-top:\(paddTopVal);")
        }
        
        if let widthVal = width?.buildPrimitive() {
            propertiesString.append("width:\(widthVal);")
        }
        if let heightVal = height?.buildPrimitive() {
            propertiesString.append("height:\(heightVal);")
        }
        if let minWidthVal = minWidth?.buildPrimitive() {
            propertiesString.append("min-width:\(minWidthVal);")
        }
        if let minHeightVal = minHeight?.buildPrimitive() {
            propertiesString.append("min-height:\(minHeightVal);")
        }
        if let maxWidthVal = maxWidth?.buildPrimitive() {
            propertiesString.append("max-width:\(maxWidthVal);")
        }
        if let maxHeightVal = maxHeight?.buildPrimitive() {
            propertiesString.append("max-height:\(maxHeightVal);")
        }
        
        if let maBotVal = marginBottom?.buildPrimitive() {
            propertiesString.append("margin-bottom:\(maBotVal);")
        }
        if let maTopVal = marginTop?.buildPrimitive() {
            propertiesString.append("margin-top:\(maTopVal);")
        }
        if let maLeftVal = marginLeft?.buildPrimitive() {
            propertiesString.append("margin-left:\(maLeftVal);")
        }
        if let maRightVal = marginRight?.buildPrimitive() {
            propertiesString.append("margin-right:\(maRightVal);")
        }
        if let shadowVal = shadow?.buildPrimitive() {
            propertiesString.append("box-shadow:\(shadowVal);")
        }
        
        if propertiesString.count > 0 { return propertiesString }
        return nil
    }
    
}
extension RWStyle {
    
    func setShadowPix(x: Double, y: Double, blur: Double, color: RWColor) {
        self.box.shadow = RWValShadow(x: RWUnit.pix(x), y: RWUnit.pix(y), blur: RWUnit.pix(blur), color: color)
    }
    
    //****************************
    // Sizes
    //****************************
    func setWidth(_ width: RWUnit) {
        self.box.width = width
    }
    func setHeight(_ height: RWUnit) {
        self.box.height = height
    }
    func setSize(w: RWUnit, h: RWUnit){
        self.setWidth(w)
        self.setHeight(h)
    }
    func setSize(_ size: RWUnit) {
        self.setSize(w: size, h: size)
    }
    
    
    
    //****************************
    // Padding
    //****************************
    func setPaddingLeft(_ val: RWUnit) {
        self.box.paddingLeft = val
    }
    func setPaddingRight(_ val: RWUnit) {
        self.box.paddingRight = val
    }
    func setPaddingTop(_ val: RWUnit) {
        self.box.paddingTop = val
    }
    func setPaddingBottom(_ val: RWUnit) {
        self.box.paddingBottom = val
    }
    func setPadding(top: RWUnit, right: RWUnit, bottom: RWUnit, left: RWUnit) {
        setPaddingTop(top)
        setPaddingLeft(left)
        setPaddingRight(right)
        setPaddingBottom(bottom)
    }
    
    //****************************
    // Margin
    //****************************
    func setMarginLeft(_ val: RWUnit) {
        box.marginLeft = val
    }
    func setMarginRight(_ val: RWUnit) {
        box.marginRight = val
    }
    func setMarginBottom(_ val: RWUnit) {
        box.marginBottom = val
    }
    func setMarginTop(_ val: RWUnit) {
        box.marginTop = val
    }
    func setMargins(top: RWUnit, right: RWUnit, bottom: RWUnit, left: RWUnit) {
        setMarginTop(top)
        setMarginBottom(bottom)
        setMarginRight(right)
        setMarginLeft(left)
    }
    
}
