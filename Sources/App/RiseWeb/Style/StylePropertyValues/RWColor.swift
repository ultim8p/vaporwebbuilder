//
//  RWValColor.swift
//  RiseFitSite
//
//  Created by Guerson Perez Yañez on 2017-06-26.
//
//

import Foundation

class RWColor: RWPrimitive {
    
    var red: Int?
    var green: Int?
    var blue: Int?
    var alpha: Double?
    
    convenience init(red: Int?, green: Int?, blue: Int?, alpha: Double?) {
        self.init()
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
        
    }
    static func black() -> RWColor {
        return RWColor.init(red: 0, green: 0, blue: 0, alpha: 1.0)
    }
    static func white() -> RWColor {
        return RWColor.init(red: 255, green: 255, blue: 255, alpha: 1.0)
    }
    static func rgba(r: Int?, g: Int?, b: Int?, a: Double?) -> RWColor {
        let color = RWColor.init(red: r, green: g, blue: b, alpha: a)
        return color
    }
    func buildPrimitive() -> String? {
        let r = self.red ?? 0
        let g = self.green ?? 0
        let b = self.blue ?? 0
        let a = self.alpha ?? 0.0
        return "rgba(\(r), \(g), \(b), \(a))"
    }
}


