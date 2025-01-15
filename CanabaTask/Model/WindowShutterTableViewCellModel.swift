//
//  WindowShutterTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import Foundation

enum WindowShutterTableViewCellType{
    case windowShutterHead
    case yes

}
class WindowShutterTableViewCellModel{
    var identifier = ""
    var cellType: WindowShutterTableViewCellType
    init(cellType: WindowShutterTableViewCellType) {
     
        self.cellType = cellType
        switch cellType {
        case .windowShutterHead:
            self.identifier = "cell.cabana.windowshutter.head"
        case .yes:
            self.identifier = "cell.cabana.windowshutter.bottom"
        }
    }
    func title()-> String{
        switch cellType {
        case .windowShutterHead:
            return "WINDOW SHUTTERS"
        default:
            return ""
        }
    }
    func subTitle()->String{
        switch cellType {
        case .windowShutterHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        default:
            return ""
       
        }
    }
//    func chooseWindowShutterOptionTitle()-> String{
//        switch cellType {
//        case .yes:
//            return "YES"
//        case .no:
//            return "NO"
//        default:
//            return ""
//        }
//    }
//    func chooseWindowShutterOptionDetails()-> String{
//        switch cellType {
//        case .yes:
//            return "With Shutters"
//        case .no:
//            return "Without Shutters"
//        default:
//                return ""
//        }
//    }
}
