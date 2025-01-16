//
//  TowHookTableViewCellModel.swift
//  CanabaTask
//
//  Created by Praveen on 15/01/25.
//

import Foundation

enum TowHookTableViewCellType{
    case towHookHead
    case yes
}
class TowHookTableViewCellModel{
    var identifier = ""
    var cellType: TowHookTableViewCellType
    init(cellType: TowHookTableViewCellType) {
        
        self.cellType = cellType
        switch cellType {
        case .towHookHead:
            self.identifier = "cell.cabana.towhook.head"
        case .yes:
            self.identifier = "cell.cabana.towhook.bottom"
     
        }
    }
    func title()-> String{
        switch cellType {
        case .towHookHead:
            return "TOW HOOK"
        default:
            return ""
        }
    }
    func SubTitle()-> String{
        switch cellType {
        case .towHookHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        default:
            return ""
        }
    }
}
