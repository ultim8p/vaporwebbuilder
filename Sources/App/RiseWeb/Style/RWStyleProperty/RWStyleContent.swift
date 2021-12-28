//
//  RWStyleContent.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

enum RWStyleObjectFitType: String {
    case fill = "fill"
    case containt = "contain"
    case cover = "cover"
    case scaleDown = "scale-down"
    case none = "none"
}

class RWStyleContent: RWPrimitive {
    
    var objectFit: RWStyleObjectFitType?
    
    func buildPrimitive() -> String? {
        var primString = ""
        
        if let fitVal = objectFit?.rawValue {
            primString.append("object-fit:\(fitVal);")
        }
        
        if primString.count > 0 { return primString }
        return nil
    }
    
}
