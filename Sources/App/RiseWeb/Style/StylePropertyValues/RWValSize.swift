//
//  RWValSize.swift
//  RiseFitSite
//
//  Created by Guerson Perez Yañez on 2017-06-26.
//
//

import Foundation
class RWValSize: RWPrimitive {
    
    var width: RWUnit?
    var height: RWUnit?
    
    convenience init(width: RWUnit, height: RWUnit) {
        self.init()
        self.width = width
        self.height = height
    }
    static func perc(x: Double, y: Double) -> RWValSize {
        return RWValSize.init(width: RWUnit.perc(x), height: RWUnit.perc(y))
    }
    static func pix(x: Double, y: Double) -> RWValSize {
        return RWValSize.init(width: RWUnit.pix(x), height: RWUnit.pix(y))
    }
    static func em(x: Double, y: Double) -> RWValSize {
        return RWValSize.init(width: RWUnit.em(x), height: RWUnit.em(y))
    }
    static func cm(x: Double, y: Double) -> RWValSize {
        return RWValSize.init(width: RWUnit.cm(x), height: RWUnit.cm(y))
    }
    static func mm(x: Double, y: Double) -> RWValSize {
        return RWValSize.init(width: RWUnit.mm(x), height: RWUnit.mm(y))
    }
    static func inches(x: Double, y: Double) -> RWValSize {
        return RWValSize.init(width: RWUnit.inches(x), height: RWUnit.inches(y))
    }
    static func pt(x: Double, y: Double) -> RWValSize {
        return RWValSize.init(width: RWUnit.pt(x), height: RWUnit.pt(y))
    }
    
    func buildPrimitive() -> String? {
        guard let x = self.width?.buildPrimitive() else { return nil }
        guard let y = self.height?.buildPrimitive() else { return nil }
        return "\(x) \(y)"
        
    }
}
