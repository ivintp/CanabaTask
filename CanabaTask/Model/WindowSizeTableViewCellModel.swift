//
//  WindowSizeTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import Foundation
import UIKit

enum WindowSizeTableViewCellType{
    case windowHead
    case standard
    case medium
    case large
}
class WindowSizeTableViewCellModel{
    var identifier = ""
    var cellType: WindowSizeTableViewCellType
    init(cellType: WindowSizeTableViewCellType) {
     
        self.cellType = cellType
        switch cellType {
        case .windowHead:
            self.identifier = "cell.cabana.window.head"
        case .standard,.medium,.large:
            self.identifier = "cell.cabana.window.bottom"
        }
    }
    func title()-> String{
        switch cellType {
        case .windowHead:
            return "WINDOW SIZE"
        default:
            return ""
        }
    }
    func subTitle()->String{
        switch cellType {
        case .windowHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        default:
            return ""
       
        }
    }
    func windowMeasurementTitle()-> String{
        switch cellType {
        case .standard:
            return "STANDARD"
        case .medium:
            return "MEDIUM"
        case .large:
            return "LARGE"
        default:
            return ""
        }
    }
    func windowMeasurementDetails()-> String{
        switch cellType {
        case .standard:
            return "160 X 100 CM"
        case .medium:
            return "120 X 100 CM"
        case .large:
            return "200 X 100 CM"
        default:
            return ""
        }
    }
}
