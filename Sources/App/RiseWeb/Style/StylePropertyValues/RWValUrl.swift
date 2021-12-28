//
//  RWValUrl.swift
//  RiseFitSite
//
//  Created by Guerson Perez Yañez on 2017-06-26.
//
//

import Foundation


class RWValUrl: RWPrimitive {
    var urlString: String?
    
    convenience init(_ urlString: String?) {
        self.init()
        self.urlString = urlString
    }
    
    func buildPrimitive() -> String? {
        if let url = self.urlString {
            return "url(\(url))"
        }
        return nil
    }
}
