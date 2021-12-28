//
//  RWContHeader.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

class RFContHeader: RWDiv {
    
    var mediaImg: RFMediaRoundSmall!
    var textPar: RFTextCallout!
    
    convenience init(in element: RWElement, title: String? ) {
        self.init(in: element)
        
        self.style.setWidth(RWUnit.perc(100.0))
        
        self.setFlex(direction: .row, wrap: .noWrap, hAlign: .left, vAlign: .center)
        
        mediaImg = RFMediaRoundSmall(in: self, picUrl: "https://i.imgur.com/itElfV3.jpg")
        
        textPar = RFTextCallout(in: self, callout: title)
        
        
    }
    
}
