//
//  RWValAlign.swift
//  RiseFitSite
//
//  Created by Guerson Perez Yañez on 2017-06-27.
//
//

import Foundation

public enum RWValAlignType: String {
    case baseline = "baseline"
    case top = "top"
    case bottom = "bottom"
    case subscriptt = "subscript"
    case superscript = "superscript"
    case textTop = "text-top"
    case textBottom = "text-bottom"
    case center = "middle"
    case initial = "initial"
    case inherit = "inherit"
}
class RWValAlign: RWPrimitive {
    
    var type: RWValAlignType?
    var value: RWUnit?
    
    func buildPrimitive() -> String? {
        if let val = value?.buildPrimitive() {
            return val
        }
        if let typeString = type?.rawValue {
            return typeString
        }
        return nil
    }
}
