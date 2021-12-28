//
//  RWAttrsHref.swift
//  App
//
//  Created by Guerson on 2018-10-28.
//

import Foundation

class RWAttrHref: RWAttr {
    
    var refString: String?
    
    convenience init(in element: RWElement, href: String?) {
        self.init(in: element, type: .href)
        
        self.refString = href
        
    }
    
    override func buildVal() -> String? {
        return refString
    }
    
}

extension RWElement {
    func addHref(_ href: String?) {
        _ = RWAttrHref(in: self, href: href)
    }
}

