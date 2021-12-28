//
//  RFUserMediaText.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation


class RFUserMediaText: RWDiv {
    
    var profileMedia: RFProfileMedia!
    var usernameText: RFTextHeadline!
    
    convenience init(in element: RWElement, src: String?, username: String?) {
        self.init(in: element)
        
        self.style.box.display = .flex
        self.style.layout.lineWrap = .noWrap
        self.style.layout.contentVerticalAlignment = .center
        self.style.layout.contentHorizontalAlignment = .center
        self.style.layout.flowDirection = .column
        
        profileMedia = RFProfileMedia(in: self, mediaUrl: src)
        
        usernameText = RFTextHeadline(in: self, head: username)
        
    }
    
}
