//
//  RFCardsColl.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

class RFCardsColl: RWDiv {
    
    var card: RFContCard!
    
    convenience init(in element: RWElement, color: RWColor) {
        self.init(in: element)
        
        self.style.color = color
        self.setFlex(direction: .row, wrap: .wrap, hAlign: .center, vAlign: .center)
        
        self.card = RFContCard(in: self, user: true)
        
    }
    
}
