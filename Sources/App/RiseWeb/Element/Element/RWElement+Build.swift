//
//  RWElement+Build.swift
//  App
//
//  Created by Guerson on 2018-10-26.
//

import Foundation

extension RWElement {
    
    
    var kind: RWElementKind? {
        if self.tag == .area ||
            self.tag == .base ||
            self.tag == .lineBreak ||
            self.tag == .col ||
            self.tag == .embed ||
            self.tag == .hr ||
            self.tag == .img ||
            self.tag == .input ||
            self.tag == .keygen ||
            self.tag == .link ||
            self.tag == .meta ||
            self.tag == .param ||
            self.tag == .source ||
            self.tag == .track ||
            self.tag == .wbr {
            return .void
        } else if self.tag == .simpleString {
            return .simpleString
        }
        return .normal
    }
    
    func prepareBuild() {
        
    }
    
    //--- mangingElements ---
    func appendElements(_ elements: [RWElement]) {
        var eles = self.elements
        eles.append(contentsOf: elements)
        self.elements = eles
    }
    func appendElement(_ element: RWElement) {
        var eles = self.elements
        eles.append(element)
        self.elements = eles
    }
    
    //--- define tag behavior ---
    var hasEndTag: Bool {
        if self.kind == .void ||
            self.kind == .simpleString {
            return false
        }
        return true
    }
    var hasStartTag: Bool {
        if self.kind == .simpleString {
            return false
        }
        return true
    }
    var closeAtStartTag: Bool {
        if self.kind == .void {
            return true
        }
        return false
    }
    
    
    
    //--- build prefix ---
    func buildPrefix() -> String? {
        var prefxString = ""
        
        
        //--- rawText no tag ---
        if self.className == "RFMediaRoundSmall" {
            print("AddingPref")
        }
        if self.hasStartTag {
            prefxString.append("<")
        }
        if self.className == "RFMediaRoundSmall" {
            print("ADDING IMG: \(prefxString)")
            
        }
        
        //--- tagString ---
        if self.hasStartTag {
            if let tagVal = tag?.rawValue {
                prefxString.append(tagVal)
            }
        }
        
        //--- addClass ---
        prefxString.append(" class=\"\(self.className)\"")
        
        /// Add attributes
        if let attrsString = self.attrs.buildPrimitive() {
            print("GOT ATRS: \(attrsString)")
            prefxString.append(attrsString)
        }
        
        //--- closeString ---
        if self.closeAtStartTag {
            prefxString.append("/")
        }
        if self.hasStartTag {
            prefxString.append(">")
        }
        
        return prefxString
    }
    
    //---- BuildSuffix ---
    func buildSuffix() -> String? {
        
        if self.hasEndTag {
            if let tag = self.tag?.rawValue {
                var suffxString = "</"
                suffxString.append(tag)
                suffxString.append(">")
                return suffxString
            }
        }
        
        
        return nil
    }
    
    
}
