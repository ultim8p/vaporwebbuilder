//
//  RWValShadow.swift
//  App
//
//  Created by Guerson on 2018-10-26.
//

import Foundation


class RWValShadow: RWPrimitive {
    
    var locationX: RWUnit?
    var locationY: RWUnit?
    var blur: RWUnit?
    var color: RWColor?
    
    convenience init(x: RWUnit, y: RWUnit, blur: RWUnit, color: RWColor) {
        self.init()
        self.locationX = x
        self.locationY = y
        self.blur = blur
        self.color = color
    }
    
    func buildPrimitive() -> String? {
        let x = locationX?.buildPrimitive() ?? "0px"
        let y = locationY?.buildPrimitive() ?? "0px"
        let b = blur?.buildPrimitive() ?? "0px"
        let col = color?.buildPrimitive() ?? "#000"
        
        return "\(x) \(y) \(b) \(col)"
    }
}
