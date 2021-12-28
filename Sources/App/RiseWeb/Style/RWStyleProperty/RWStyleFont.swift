//
//  RWStyleFont.swift
//  App
//
//  Created by Guerson on 2018-10-26.
//

import Foundation

enum RWStyleFontWeight: String {
    
    
    case regular = "normal"
    case bold = "bold"
    
    case w100 = "100"
    case w200 = "200"
    case w300 = "300"
    case w400 = "400"
    case w500 = "500"
    case w600 = "600"
    case w700 = "700"
    case w800 = "800"
    case w900 = "900"
    
}

class RWStyleFont: RWPrimitive {
    var familiy: String?
    var size: RWUnit?
    var weight: RWStyleFontWeight?
    
    func buildPrimitive() -> String? {
        var propertiesString = ""
        
        if let familyStr = familiy {
            propertiesString.append("font-family:\(familyStr);")
        }
        if let sizeVal = size?.buildPrimitive() {
            propertiesString.append("font-size:\(sizeVal);")
        }
        if let weightVal = weight?.rawValue {
            propertiesString.append("font-weight:\(weightVal)")
        }
        if propertiesString.count > 0 { return propertiesString }
        return nil
    }
}


