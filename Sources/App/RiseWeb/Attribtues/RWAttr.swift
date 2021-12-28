//
//  RWAttr.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation


class RWAttr: RWPrimitive {
    
    var type: RWAttrType?
    
    init() {
        
    }
    
    convenience init(in element: RWElement?, type: RWAttrType?) {
        self.init()
        
        self.type = type
        
        element?.attrs.append(self)
        
    }
    
    func buildPrimitive() -> String? {
        var primString = ""
        
        guard let typeVal = type?.rawValue else { return nil }
        guard let valString = self.buildVal() else { return nil }
        
        primString.append(" \(typeVal)=\"\(valString)\"")
        
        if primString.count > 0 { return primString }
        return nil
    }
    
    func buildVal() -> String? {
        
        return nil
    }
    
}
