//
//  RWValUnit.swift
//  RiseFitSite
//
//  Created by Guerson Perez Yañez on 2017-06-26.
//
//

import Foundation

enum RWUnitKind: String {
    case pixels = "px"
    case percent = "%"
    case em = "em"
    case cm = "cm"
    case mm = "mm"
    case inches = "in"
    case pt = "pt"
}



class RWUnit: RWPrimitive {
    var value: Double?
    var kind: RWUnitKind?
    
    convenience init(_ val: Double, kind: RWUnitKind) {
        self.init()
        self.value = val
        self.kind = kind
    }
    static func pix(_ val: Double) -> RWUnit {
        return RWUnit.init(val, kind: .pixels)
    }
    static func perc(_ val: Double) -> RWUnit {
        return RWUnit.init(val, kind: .percent)
    }
    static func em(_ val: Double) -> RWUnit {
        return RWUnit.init(val, kind: .em)
    }
    static func cm(_ val: Double) -> RWUnit {
        return RWUnit.init(val, kind: .cm)
    }
    static func mm(_ val: Double) -> RWUnit {
        return RWUnit.init(val, kind: .mm)
    }
    static func inches(_ val: Double) -> RWUnit {
        return RWUnit.init(val, kind: .inches)
    }
    static func pt(_ val: Double) -> RWUnit {
        return RWUnit.init(val, kind: .pt)
    }
    
    func buildPrimitive() -> String? {
        guard let kin = self.kind else { return nil }
        guard let val = self.value else { return nil }
        
        return "\(val)\(kin.rawValue)"
    }
}

extension RWUnit {
    
}
