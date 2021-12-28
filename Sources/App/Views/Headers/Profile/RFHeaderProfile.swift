//
//  RWHeaderProfile.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

class RFHeaderProfile: RWDiv {
    
    var profileUsernameView: RFUserMediaText!
    
    
    convenience init(in element: RWElement, src: String?, username: String?) {
        self.init(in: element)
        
        self.style.background.color = RWColor.rfMain1
        
        self.setFlex(direction: .row, wrap: .wrap, hAlign: .center, vAlign: .center)
        
        profileUsernameView = RFUserMediaText(in: self, src: src, username: username)
        
    }
    
}
