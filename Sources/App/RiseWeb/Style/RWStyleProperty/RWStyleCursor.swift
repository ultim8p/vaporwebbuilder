//
//  RWCursor.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

enum RWStyleCursorType: String {
    case alias = "alias"
    case allScroll = "all-scroll"
    case auto = "auto"
    case cell = "cell"
    case contextMenu = "context-menu"
    case colResize = "col-resize"
    case copy = "copy"
    case crosshair = "crosshair"
    case defalt = "default"
    case eResize = "e-resize"
    case ewResize = "ew-resize"
    case grab = "grab"
    case grabbing = "grabbing"
    case help = "help"
    case move = "move"
    case nResize = "n-resize"
    case neResize = "ne-resize"
    case neswResize = "nesw-resize"
    case nsResize = "ns-resize"
    case nwResize = "nw-resize"
    case nwseResize = "nwse-resize"
    case noDrop = "no-drop"
    case none = "none"
    case notAllowed = "not-allowed"
    case pointer = "pointer"
    case progress = "progress"
    case rowResize = "row-resize"
    case sResize = "s-resize"
    case seResize = "se-resize"
    case swResize = "sw-resize"
    case text = "text"
    case wResize = "w-resize"
    case wait = "wait"
    case zoomIn = "zoom-in"
    case zoomOut = "zoom-out"
    
}

class RWStyleCursor: RWPrimitive {
    
    var type: RWStyleCursorType?
    
    func buildPrimitive() -> String? {
        var primString = ""
        if let typeVal = type?.rawValue {
            primString.append("cursor:\(typeVal);")
        }
        if primString.count > 0 { return primString }
        return nil
    }
    
}
