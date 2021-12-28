//
//  RFTextCallout.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

class RFTextCallout: RWParagraph {
    
    convenience init(in element: RWElement, callout: String? ){
        self.init(in: element, text: callout)
        
        self.style.font.weight = .w300
        
    }
    
}
