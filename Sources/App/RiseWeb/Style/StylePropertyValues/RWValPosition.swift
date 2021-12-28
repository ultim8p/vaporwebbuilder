//
//  RWValPosition.swift
//  RiseFitSite
//
//  Created by Guerson Perez Yañez on 2017-06-26.
//
//

import Foundation

class RWValPosition: RWPrimitive {
    
    var xPos: RWUnit?
    var yPos: RWUnit?
    
    convenience init(xPos: RWUnit, yPos: RWUnit) {
        self.init()
        self.xPos = xPos
        self.yPos = yPos
    }
    static func perc(x: Double, y: Double) -> RWValPosition {
        return RWValPosition.init(xPos: RWUnit.perc(x), yPos: RWUnit.perc(y))
    }
    static func pix(x: Double, y: Double) -> RWValPosition {
        return RWValPosition.init(xPos: RWUnit.pix(x), yPos: RWUnit.pix(y))
    }
    static func em(x: Double, y: Double) -> RWValPosition {
        return RWValPosition.init(xPos: RWUnit.em(x), yPos: RWUnit.em(y))
    }
    static func cm(x: Double, y: Double) -> RWValPosition {
        return RWValPosition.init(xPos: RWUnit.cm(x), yPos: RWUnit.cm(y))
    }
    static func mm(x: Double, y: Double) -> RWValPosition {
        return RWValPosition.init(xPos: RWUnit.mm(x), yPos: RWUnit.mm(y))
    }
    static func inches(x: Double, y: Double) -> RWValPosition {
        return RWValPosition.init(xPos: RWUnit.inches(x), yPos: RWUnit.inches(y))
    }
    static func pt(x: Double, y: Double) -> RWValPosition {
        return RWValPosition.init(xPos: RWUnit.pt(x), yPos: RWUnit.pt(y))
    }
    
    func buildPrimitive() -> String? {
        guard let x = self.xPos?.buildPrimitive() else { return nil }
        guard let y = self.yPos?.buildPrimitive() else { return nil }
        return "\(x) \(y)"
        
    }
}
